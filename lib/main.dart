import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/app_widget.dart';

import 'src/core/providers/theme_provider.dart';
import 'src/core/providers/drawer_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider()),
        ChangeNotifierProvider<DrawerProvider>(
            create: (context) => DrawerProvider()),
      ],
      child: const AppWidget(),
    ),
  );
}
