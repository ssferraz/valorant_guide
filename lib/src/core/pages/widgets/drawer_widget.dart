import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  'Menu',
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
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);

                Navigator.pop(context);
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
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
