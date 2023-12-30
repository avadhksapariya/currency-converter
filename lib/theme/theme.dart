import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.deepPurple,
    secondary: Colors.deepPurple.shade400,
    tertiary: Colors.deepPurple.shade300,
    background: Colors.white,
  ),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.blueGrey,
    secondary: Colors.blueGrey.shade400,
    tertiary: Colors.blueGrey.shade300,
    background: Colors.grey.shade900,
  ),
  useMaterial3: true,
);