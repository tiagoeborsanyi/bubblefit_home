import 'package:flutter/material.dart';

// Provider.of<ThemeModel>(context).currentTheme

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: const Color(0xFF121212),
  scaffoldBackgroundColor: const Color(0xFF121212),
  // accentColor: Color(0xFF2B2B2B),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFF2B2B2B),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
    headline4: TextStyle(color: Colors.white),
    headline5: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
  ),
  appBarTheme: const AppBarTheme(color: Color(0xFF121212)),
);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  // accentColor: const Color(0xFF2B2B2B),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.amber,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.black),
    headline4: TextStyle(color: Colors.black),
    headline5: TextStyle(color: Colors.black),
    headline3: TextStyle(color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(color: Colors.white),
);
