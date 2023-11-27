import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/database/db.dart';
import 'package:valorant_guide/src/core/database/firebase_service.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/models/composition.dart';
import 'package:valorant_guide/src/core/models/role.dart';
import 'package:valorant_guide/src/core/providers/theme_provider.dart';
import 'package:valorant_guide/src/core/widgets/card_composition_widget.dart';
import 'package:valorant_guide/src/core/widgets/drawer_widget.dart';
import 'package:valorant_guide/src/core/widgets/switch_widget.dart';

class CompositionPage extends StatefulWidget {
  const CompositionPage({super.key});

  @override
  State<CompositionPage> createState() => _CompositionPageState();
}

class _CompositionPageState extends State<CompositionPage> {
  List<Agent> agents = [];
  List<Composition> compositions = [];
  final nameFilterController = TextEditingController();
  Agent? selectedAgent1;
  Agent? selectedAgent2;
  Agent? selectedAgent3;
  Agent? selectedAgent4;
  Agent? selectedAgent5;
  bool? clearFilter = false;
  bool? selectedMode;
  FirebaseService firebaseService = FirebaseService();

  @override
  void initState() {
    super.initState();
    getAllAgents();
    getCompositions();
  }

  Future<void> getAllAgents() async {
    final db = DB.instance;
    agents = await db.getAllAgents();
    setState(() {});
  }

  Future<void> getCompositions() async {
    compositions = await firebaseService.getCompositions();
    setState(() {});
  }

  void _showCompositionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: const Text('Nova Composição'),
            content: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: nameFilterController,
                      decoration:
                          const InputDecoration(labelText: 'Nome do Mapa'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: selectedAgent1,
                      onChanged: (value) {
                        setState(() {
                          selectedAgent1 = value;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 1'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: selectedAgent2,
                      onChanged: (value) {
                        setState(() {
                          selectedAgent2 = value;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 2'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: selectedAgent3,
                      onChanged: (value) {
                        setState(() {
                          selectedAgent3 = value;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 3'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: selectedAgent4,
                      onChanged: (value) {
                        setState(() {
                          selectedAgent4 = value;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 4'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: selectedAgent5,
                      onChanged: (value) {
                        setState(() {
                          selectedAgent5 = value;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 5'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < 2; i++)
                            Row(
                              children: [
                                Radio(
                                  value: i == 0,
                                  groupValue: selectedMode,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedMode = value;
                                    });
                                  },
                                ),
                                i == 0
                                    ? const Text("Ataque")
                                    : const Text("Defesa"),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: clearFilter ?? false,
                          onChanged: (value) {
                            setState(() {
                              clearFilter = value ?? false;
                              selectedAgent1 = null;
                              selectedAgent2 = null;
                              selectedAgent3 = null;
                              selectedAgent4 = null;
                              selectedAgent5 = null;
                              nameFilterController.clear();
                              selectedMode = null;
                            });
                          },
                        ),
                        const Text('Limpar Composição'),
                      ],
                    ),
                  ],
                );
              },
            ),
            actions: [
              ElevatedButton(
                child: const Text('Cancelar'),
                onPressed: () {
                  clearFilter = null;
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Salvar'),
                onPressed: () {
                  final List<Agent> agentsCompositions = [];

                  agentsCompositions.add(selectedAgent1!);
                  agentsCompositions.add(selectedAgent2!);
                  agentsCompositions.add(selectedAgent3!);
                  agentsCompositions.add(selectedAgent4!);
                  agentsCompositions.add(selectedAgent5!);

                  firebaseService.addComposition(
                    Composition(
                        mapa: nameFilterController.text,
                        agents: agentsCompositions,
                        isAttack: selectedMode!),
                  );
                  getCompositions();
                  clearFilter = null;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showCompositionEditDialog(BuildContext context, Composition c) {
    final mapaController = TextEditingController();
    mapaController.text = c.mapa;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: const Text('Editar Composição'),
            content: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: mapaController,
                      decoration:
                          const InputDecoration(labelText: 'Nome do Mapa'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: c.agents[0],
                      onChanged: (value) {
                        setState(() {
                          c.agents[0] = value!;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 1'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: c.agents[1],
                      onChanged: (value) {
                        setState(() {
                          c.agents[1] = value!;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 2'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: c.agents[2],
                      onChanged: (value) {
                        setState(() {
                          c.agents[2] = value!;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 3'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: c.agents[3],
                      onChanged: (value) {
                        setState(() {
                          c.agents[3] = value!;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 4'),
                    ),
                    const SizedBox(height: 10),
                    DropdownButton<Agent>(
                      isExpanded: true,
                      value: c.agents[4],
                      onChanged: (value) {
                        setState(() {
                          c.agents[4] = value!;
                        });
                      },
                      items: agents.map((agent) {
                        return DropdownMenuItem<Agent>(
                          value: agent,
                          child: Text(
                              "${agent.toString().split('.').last} (${agent.role.fromRole()})"),
                        );
                      }).toList(),
                      hint: const Text('Selecione o agente 5'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < 2; i++)
                            Row(
                              children: [
                                Radio(
                                  value: i == 0,
                                  groupValue: c.isAttack,
                                  onChanged: (value) {
                                    setState(() {
                                      c.isAttack = value!;
                                    });
                                  },
                                ),
                                i == 0
                                    ? const Text("Ataque")
                                    : const Text("Defesa"),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            actions: [
              ElevatedButton(
                child: const Text('Cancelar'),
                onPressed: () {
                  clearFilter = null;
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Salvar'),
                onPressed: () {
                  final List<Agent> agentsCompositions1 = [];

                  agentsCompositions1.add(c.agents[0]);
                  agentsCompositions1.add(c.agents[1]);
                  agentsCompositions1.add(c.agents[2]);
                  agentsCompositions1.add(c.agents[3]);
                  agentsCompositions1.add(c.agents[4]);

                  firebaseService.updateComposition(
                    c.id!,
                    Composition(
                        mapa: mapaController.text,
                        agents: agentsCompositions1,
                        isAttack: c.isAttack),
                  );
                  getCompositions();
                  clearFilter = null;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Composições",
          style: TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
        actions: <Widget>[
          SwitchWidget(
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: themeProvider.toggleTheme,
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            clearFilter = null;
            selectedAgent1 = null;
            selectedAgent2 = null;
            selectedAgent3 = null;
            selectedAgent4 = null;
            selectedAgent5 = null;
            nameFilterController.clear();
            selectedMode = null;
          });
          _showCompositionDialog(context);
        },
      ),
      body: compositions.isEmpty
          ? const Center(
              child: Text(
                "Nenhuma composição encontrada.",
                style: TextStyle(fontSize: 20),
              ),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height -
                  175, // Ajuste a altura conforme necessário
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: compositions.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = compositions[index];
                  return Dismissible(
                    key: Key(item.id!),
                    background: Container(color: Colors.red),
                    onDismissed: (direction) {
                      firebaseService.deleteComposition(item.id!);
                      const snackBar = SnackBar(
                        content: Text('Composição removida!'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 100,
                            child: CardCompositionWidget(
                              composition: Composition(
                                  id: compositions[index].id,
                                  agents: compositions[index].agents,
                                  isAttack: compositions[index].isAttack,
                                  mapa: compositions[index].mapa),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 90,
                            child: ElevatedButton(
                              onPressed: () async {
                                final comp = await firebaseService
                                    .getCompositionById(item.id!);
                                // ignore: use_build_context_synchronously
                                _showCompositionEditDialog(context, comp!);
                              },
                              child: const Icon(Icons.edit),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
