import 'package:currency_converter/home_page.dart';
import 'package:currency_converter/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo App',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}