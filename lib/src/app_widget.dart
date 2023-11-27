import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/core/providers/theme_provider.dart';
import 'package:valorant_guide/src/modules/composition/pages/composition_page.dart';

import 'core/theme/color_schemes.dart';
import 'modules/home/pages/details_page.dart';
import 'modules/home/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  final title = "Guia do Valorant";

  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: title,
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
        '/': (context) => const HomePage(title: 'Agentes'),
        '/details': (context) => const DetailsPage(),
        '/compositions': (context) => const CompositionPage(),
      },
    );
  }
}
