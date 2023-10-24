import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/models/agent.dart';

import '../../providers/theme_provider.dart';

class CardWidget extends StatelessWidget {
  final Agent agent;

  const CardWidget({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
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
              style: themeProvider.themeMode == ThemeMode.dark
                  ? Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontFamily: 'Tungsten', fontSize: 20, color: Colors.white)
                  : Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontFamily: 'Tungsten',
                      fontSize: 20,
                      color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    themeProvider.themeMode == ThemeMode.dark
                        ? Colors.white
                        : Colors.black,
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
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontFamily: 'Tungsten',
                      fontSize: 20,
                      color: themeProvider.themeMode == ThemeMode.dark
                          ? Colors.grey.shade300
                          : Colors.grey.shade600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
