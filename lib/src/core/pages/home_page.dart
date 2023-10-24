import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/pages/widgets/card_widget.dart';
import 'package:valorant_guide/src/core/pages/widgets/drawer_widget.dart';
import 'package:valorant_guide/src/core/repositories/local_storage_repository.dart';

import '../models/agent.dart';
import '../models/role.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Agent> originalAgents;
  List<Agent> agents = [];

  TextEditingController nameFilterController = TextEditingController();
  Role? selectedRole;
  bool clearFilter = false;

  @override
  void initState() {
    super.initState();
    originalAgents = LocalStorageRepository.getAgents();
    agents.addAll(originalAgents);
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filtrar'),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: nameFilterController,
                    decoration:
                        const InputDecoration(labelText: 'Nome do Agente'),
                  ),
                  DropdownButton<Role>(
                    value: selectedRole,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                      });
                    },
                    items: Role.values.map((role) {
                      return DropdownMenuItem<Role>(
                        value: role,
                        child: Text(role.toString().split('.').last),
                      );
                    }).toList(),
                    hint: const Text('Selecione o Cargo'),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: clearFilter,
                        onChanged: (value) {
                          setState(() {
                            clearFilter = value ?? false;
                          });
                        },
                      ),
                      const Text('Limpar Filtro'),
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
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Aplicar'),
              onPressed: () {
                debugPrint(clearFilter.toString());
                if (clearFilter) {
                  setState(() {
                    nameFilterController.clear();
                    selectedRole = null;
                    agents.clear();
                    agents.addAll(originalAgents);
                  });
                } else {
                  setState(() {
                    final nameFilter = nameFilterController.text.toLowerCase();
                    final filteredAgents = originalAgents.where((agent) {
                      final nameMatch =
                          agent.name.toLowerCase().contains(nameFilter);
                      final roleMatch =
                          selectedRole == null || agent.role == selectedRole;
                      return nameMatch && roleMatch;
                    }).toList();
                    agents.clear();
                    agents.addAll(filteredAgents);
                  });
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    // },
    //);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.filter_alt,
              color: Colors.white,
            ),
            onPressed: () {
              _showFilterDialog(context);
            },
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            ),
            itemCount: agents.length,
            itemBuilder: (BuildContext context, int index) {
              final agent = agents[index % agents.length];
              return GestureDetector(
                child: CardWidget(agent: agent),
                onTap: () {
                  Navigator.pushNamed(context, '/details', arguments: agent);
                },
              );
            },
          );
        },
      ),
    );
  }
}
