import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/providers/theme_provider.dart';

import '../models/agent.dart';
import '../models/role.dart';
import 'widgets/switch_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Color getColor(Role role) {
    switch (role) {
      case Role.duelist:
        return Colors.red.shade300;
      case Role.controller:
        return Colors.yellow.shade300;
      case Role.initiator:
        return Colors.green.shade300;
      case Role.sentinel:
        return Colors.blue.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Agent? agent = ModalRoute.of(context)?.settings.arguments as Agent?;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          agent?.name ?? "",
          style: const TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
        actions: <Widget>[
          SwitchWidget(
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: themeProvider.toggleTheme,
          ),
          IconButton(
            icon: Icon(
              agent?.isFavorite == true ? Icons.star : Icons.star_border,
              color: agent?.isFavorite == true ? Colors.yellow : null,
            ),
            tooltip: 'Favorite Agent',
            onPressed: () {
              setState(() {
                if (agent != null) {
                  agent.isFavorite = !agent.isFavorite;
                }
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              color: getColor(agent!.role),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'assets/roles/${agent.role.toString().split('.').last}.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 16,
                        child: Text(
                          agent.getRole(agent.role),
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Tungsten',
                              color: Colors.black),
                        ),
                      ),
                    ), // Espaçamento entre as imagens
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        agent.urlImage,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Biografia',
                style: TextStyle(fontSize: 20, fontFamily: 'Tungsten'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Text(
                agent.bio,
                style: TextStyle(
                  fontSize: 16,
                  color: themeProvider.themeMode == ThemeMode.dark
                      ? Colors.grey.shade300
                      : Colors.grey.shade600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Habilidades',
                style: TextStyle(fontSize: 20, fontFamily: 'Tungsten'),
              ),
            ),
            SizedBox(
              height: 300,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 300,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: agent.abilities.length,
                  itemBuilder: (context, index) {
                    final ability = agent.abilities[index];
                    return Card(
                      child: ListTile(
                        leading: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            themeProvider.themeMode == ThemeMode.dark
                                ? Colors.white
                                : Colors.black,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            ability.imagePath,
                            height: 50,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          ability.name,
                          style: const TextStyle(
                              fontFamily: 'Tungsten', fontSize: 20),
                        ),
                        subtitle: Text(ability.description),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
