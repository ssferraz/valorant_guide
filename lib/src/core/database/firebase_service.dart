import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/models/composition.dart';

class FirebaseService {
  final CollectionReference compositionsCollection =
      FirebaseFirestore.instance.collection('compositions');

  // Cadastrar
  Future<void> addComposition(Composition composition) async {
    await compositionsCollection.add({
      'mapa': composition.mapa,
      'agents': composition.agents.map((agent) => agent.toMap()).toList(),
      'isAttack': composition.isAttack,
    });
  }

  // Listar
  Future<List<Composition>> getCompositions() async {
    QuerySnapshot querySnapshot = await compositionsCollection.get();

    return querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      String documentId = doc.id;

      return Composition(
        id: documentId,
        mapa: data['mapa'],
        agents: (data['agents'] as List<dynamic>)
            .map((agentData) => Agent.fromMap(agentData))
            .toList(),
        isAttack: data['isAttack'],
      );
    }).toList();
  }

  // Atualizar
  Future<void> updateComposition(
      String documentId, Composition composition) async {
    await compositionsCollection.doc(documentId).update({
      'mapa': composition.mapa,
      'agents': composition.agents.map((agent) => agent.toMap()).toList(),
      'isAttack': composition.isAttack,
    });
  }

  // Remover
  Future<void> deleteComposition(String documentId) async {
    await compositionsCollection.doc(documentId).delete();
  }

  // Obter por ID
  Future<Composition?> getCompositionById(String documentId) async {
    DocumentSnapshot docSnapshot =
        await compositionsCollection.doc(documentId).get();

    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data() as Map<String, dynamic>;

      return Composition(
        id: documentId,
        mapa: data['mapa'],
        agents: (data['agents'] as List<dynamic>)
            .map((agentData) => Agent.fromMap(agentData))
            .toList(),
        isAttack: data['isAttack'],
      );
    } else {
      // If the document doesn't exist, return null
      return null;
    }
  }
}
