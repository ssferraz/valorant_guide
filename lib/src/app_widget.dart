import 'package:flutter/material.dart';

import 'core/pages/details_page.dart';
import 'core/pages/home_page.dart';
import 'core/theme/color_schemes.dart';

class AppWidget extends StatelessWidget {
  final title = "Guia do Valorant";

  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: false,
      ),
      routes: {
        '/': (context) => HomePage(title: title),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
