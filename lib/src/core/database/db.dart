import 'dart:async';
import 'dart:convert';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/agent.dart';
import '../models/role.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _initDatabase();
      return _database;
    }
  }

  _initDatabase() async {
    if (_database != null) {
      return _database;
    }

    _database = await openDatabase(
      join(await getDatabasesPath(), 'database.db'),
      version: 1,
      onCreate: _onCreate,
    );
    return _database;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      '''
    CREATE TABLE agent (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      role TEXT,
      urlImage TEXT,
      bio TEXT,
      abilities TEXT,
      isFavorite INTEGER
    )
    ''',
    );
  }

  Future<void> insertAgents(List<Agent> agents) async {
    final db = await database;
    final batch = db.batch();
    final agents = await getAllAgents();
    if (agents.isEmpty) {
      for (final agent in agents) {
        batch.insert('agent', {
          'name': agent.name,
          'role': agent.role.fromRole(),
          'urlImage': agent.urlImage,
          'bio': agent.bio,
          'abilities': json.encode(
              agent.abilities.map((ability) => ability.toMap()).toList()),
          'isFavorite': agent.isFavorite ? 1 : 0,
        });
      }
    }

    await batch.commit();
  }

  Future<List<Agent>> getAllAgents() async {
    final db = await database;
    final result = await db.query('agent');
    return result
        .map((agentMap) => Agent.fromMap(agentMap))
        .toList()
        .cast<Agent>();
  }

  Future<List<Agent>> getAgents(
      {String? name, Role? role, bool? isFavorite}) async {
    final db = await database;
    final queryBuilder = StringBuffer('SELECT * FROM agent WHERE 1=1');
    final List<dynamic> args = [];

    if (name != null && name.isNotEmpty) {
      queryBuilder.write(' AND name = ?');
      args.add(name);
    }

    if (role != null) {
      queryBuilder.write(' AND role = ?');
      args.add(role.fromRole());
    }

    if (isFavorite != null) {
      queryBuilder.write(' AND isFavorite = ?');
      args.add(isFavorite ? 1 : 0);
    }

    final query = queryBuilder.toString();
    final result = await db.rawQuery(query, args);

    return result
        .map((agentMap) => Agent.fromMap(agentMap))
        .toList()
        .cast<Agent>();
  }
}
