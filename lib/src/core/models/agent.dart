import 'dart:convert';

import 'ability.dart';
import 'role.dart';

class Agent {
  final String name;
  final Role role;
  final String urlImage;
  final String bio;
  final List<Ability> abilities;
  late bool isFavorite;

  Agent(
      {required this.name,
      required this.role,
      required this.urlImage,
      required this.bio,
      required this.abilities,
      this.isFavorite = false});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'role': role.fromRole(),
      'urlImage': urlImage,
      'bio': bio,
      'abilities': abilities.map((ability) => ability.toMap()).toList(),
      'isFavorite': isFavorite ? 1 : 0,
    };
  }

  static Agent fromMap(Map<String, dynamic> map) {
    return Agent(
      name: map['name'],
      role: RoleExtension.toRole(map['role']),
      urlImage: map['urlImage'],
      bio: map['bio'],
      abilities: (jsonDecode(map['abilities']) as List<dynamic>)
          .map((abilityMap) => Ability.fromMap(abilityMap))
          .toList(),
      isFavorite: map['isFavorite'] == 1,
    );
  }

  @override
  String toString() {
    return name;
  }
}
