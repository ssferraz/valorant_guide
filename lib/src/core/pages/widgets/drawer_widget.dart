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
      print(_selectedIndex);
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFBD0C2D),
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Agentes',
                style: TextStyle(
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
                'Configurações',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Sair',
                style: TextStyle(
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
