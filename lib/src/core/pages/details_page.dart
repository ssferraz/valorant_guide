import 'package:flutter/material.dart';

import '../models/agent.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Agent? agent = ModalRoute.of(context)?.settings.arguments as Agent?;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          agent?.name ?? "",
          style: const TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image?.asset(
                        'assets/roles/${agent?.role.toString().split('.').last}.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 16,
                        child: Text(
                          agent?.getRole(agent.role) ?? "",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ), // Espaçamento entre as imagens
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        agent?.urlImage ?? "",
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
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Text(
                agent?.bio ?? "",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Habilidades',
                style: TextStyle(fontSize: 20),
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
                  itemCount: agent?.abilities.length,
                  itemBuilder: (context, index) {
                    final ability = agent?.abilities[index];
                    return Card(
                      child: ListTile(
                        leading: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Colors.black,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            ability?.imagePath ?? "",
                            height: 50,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(ability?.name ?? ""),
                        subtitle: Text(ability?.description ?? ""),
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
