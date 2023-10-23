import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/pages/widgets/card_widget.dart';
import 'package:valorant_guide/src/core/pages/widgets/drawer_widget.dart';
import 'package:valorant_guide/src/core/repositories/local_storage_repository.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final agents = LocalStorageRepository.getAgents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
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
