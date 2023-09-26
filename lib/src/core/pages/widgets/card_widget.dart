import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/models/agent.dart';

class CardWidget extends StatelessWidget {
  final Agent agent;

  const CardWidget({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(agent.urlImage, fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              agent.name,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/roles/${agent.role.toString().split('.').last}.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  agent.getRole(agent.role),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
