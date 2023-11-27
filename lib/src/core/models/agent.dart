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
      abilities: _decodeAbilities(map['abilities']),
      isFavorite: map['isFavorite'] == 1,
    );
  }

  static List<Ability> _decodeAbilities(dynamic abilities) {
    if (abilities is List<dynamic>) {
      return abilities
          .map((abilityMap) => Ability.fromMap(abilityMap))
          .toList();
    } else if (abilities is String) {
      // If it's a JSON string, decode it
      return (jsonDecode(abilities) as List<dynamic>)
          .map((abilityMap) => Ability.fromMap(abilityMap))
          .toList();
    } else {
      // Handle other cases or throw an error as needed
      throw ArgumentError('Invalid type for abilities: $abilities');
    }
  }

  @override
  String toString() {
    return name;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Agent && other.name == name && other.role == role;
  }

  @override
  int get hashCode => name.hashCode ^ role.hashCode;
}
