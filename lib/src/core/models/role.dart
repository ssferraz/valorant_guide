enum Role { duelist, controller, initiator, sentinel, unknown }

extension RoleExtension on Role {
  String fromRole() {
    switch (this) {
      case Role.duelist:
        return 'Duelista';
      case Role.controller:
        return 'Controlador';
      case Role.initiator:
        return 'Iniciador';
      case Role.sentinel:
        return 'Sentinela';
      default:
        return 'Desconhecido';
    }
  }

  static Role toRole(String roleString) {
    switch (roleString) {
      case 'Duelista':
        return Role.duelist;
      case 'Controlador':
        return Role.controller;
      case 'Iniciador':
        return Role.initiator;
      case 'Sentinela':
        return Role.sentinel;
      default:
        return Role.unknown;
    }
  }
}
