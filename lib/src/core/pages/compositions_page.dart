import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import 'widgets/drawer_widget.dart';
import 'widgets/switch_widget.dart';

class CompositionsPage extends StatefulWidget {
  const CompositionsPage({super.key});

  @override
  State<CompositionsPage> createState() => _CompositionsPageState();
}

class _CompositionsPageState extends State<CompositionsPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Composições"),
        centerTitle: true,
        actions: <Widget>[
          SwitchWidget(
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: themeProvider.toggleTheme,
          )
        ],
      ),
      drawer: const DrawerWidget(),
    );
  }
}
