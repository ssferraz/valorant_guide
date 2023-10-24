import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/pages/compositions_page.dart';
import 'package:valorant_guide/src/core/providers/theme_provider.dart';

import 'core/pages/details_page.dart';
import 'core/pages/home_page.dart';
import 'core/theme/color_schemes.dart';

class AppWidget extends StatelessWidget {
  final title = "Guia do Valorant";

  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light().copyWith(
        colorScheme: lightColorScheme,
        useMaterial3: false,
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColorScheme,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(title: title),
        '/details': (context) => const DetailsPage(),
        '/compositions': (context) => const CompositionsPage(),
      },
    );
  }
}
