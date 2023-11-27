import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/providers/drawer_provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFBD0C2D),
              ),
              child: Center(
                child: Text(
                  'Guia do Valorant',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontFamily: 'Tungsten',
                      fontSize: 30,
                      color: Colors.black),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Agentes',
                style: TextStyle(
                  fontFamily: 'Tungsten',
                  fontSize: 20,
                ),
              ),
              selected: drawerProvider.selectedIndex == 0,
              onTap: () {
                drawerProvider.onItemTapped(0);
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text(
                'Composições',
                style: TextStyle(
                  fontFamily: 'Tungsten',
                  fontSize: 20,
                ),
              ),
              selected: drawerProvider.selectedIndex == 1,
              onTap: () {
                drawerProvider.onItemTapped(1);
                Navigator.pushReplacementNamed(context, '/compositions');
              },
            ),
            ListTile(
              title: const Text(
                'Sair',
                style: TextStyle(
                  fontFamily: 'Tungsten',
                  fontSize: 20,
                ),
              ),
              selected: drawerProvider.selectedIndex == 2,
              onTap: () {
                drawerProvider.onItemTapped(2);
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
