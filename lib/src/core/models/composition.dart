import 'package:valorant_guide/src/core/models/agent.dart';

class Composition {
  String? id;
  String mapa;
  List<Agent> agents;
  bool isAttack;

  Composition({
    this.id,
    required this.mapa,
    required this.agents,
    required this.isAttack,
  });
}
