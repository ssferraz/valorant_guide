import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/pages/widgets/card_widget.dart';
import 'package:valorant_guide/src/core/pages/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Agent> agents = [
    Agent(
        name: 'Brinstorm',
        function: 'Controller',
        urlImage: 'images/brimstone.png')
  ];

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
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            final agent = agents[index % agents.length];
            return CardWidget(agent: agent);
          }),
    );
  }
}
