import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:valorant_guide/src/app_widget.dart';

import 'src/core/theme/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const AppWidget(),
    ),
  );
}
