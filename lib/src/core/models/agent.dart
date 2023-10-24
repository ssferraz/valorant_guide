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

  String getRole(Role role) {
    switch (role) {
      case Role.duelist:
        return 'Duelista';
      case Role.controller:
        return 'Controlador';
      case Role.initiator:
        return 'Iniciador';
      case Role.sentinel:
        return 'Sentinela';
      default:
        return '';
    }
  }
}
