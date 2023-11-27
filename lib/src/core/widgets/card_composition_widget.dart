import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/models/composition.dart';
import 'package:valorant_guide/src/core/models/role.dart';
import 'package:valorant_guide/src/core/providers/theme_provider.dart';

class CardCompositionWidget extends StatelessWidget {
  final Composition composition;

  const CardCompositionWidget({super.key, required this.composition});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "${composition.mapa}    |",
                    style: themeProvider.themeMode == ThemeMode.dark
                        ? Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontFamily: 'Tungsten',
                              fontSize: 20,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontFamily: 'Tungsten',
                            fontSize: 20,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    composition.isAttack ? "Ataque" : "Defesa",
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
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 50,
                    width: 225,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: CircleAvatar(
                            backgroundColor: () {
                              switch (composition.agents[index].role) {
                                case Role.duelist:
                                  return Colors.red.shade300;
                                case Role.controller:
                                  return Colors.yellow.shade300;
                                case Role.initiator:
                                  return Colors.green.shade300;
                                case Role.sentinel:
                                  return Colors.blue.shade300;
                                case Role.unknown:
                                  return Colors.grey.shade300;
                                default:
                                  return Colors.grey.shade300;
                              }
                            }(),
                            child:
                                Image.asset(composition.agents[index].urlImage),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
