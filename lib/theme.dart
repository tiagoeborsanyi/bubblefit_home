import 'package:flutter/material.dart';

// Provider.of<ThemeModel>(context).currentTheme

ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    // primaryColor: const Color(0xFF121212),
    scaffoldBackgroundColor: const Color(0xFF121212),
    unselectedWidgetColor: Colors.white54,

    // accentColor: Color(0xFF2B2B2B),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.teal,
      primaryVariant: Colors.white,
      onPrimary: const Color(0xFF121212),
      secondary: const Color(0xFF2B2B2B),
      secondaryVariant: const Color(0xFF606060),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      subtitle1: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      subtitle2: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      headline5: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(color: Color(0xFF121212)),
    iconTheme: const IconThemeData(color: Colors.white));

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  // primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  // accentColor: const Color(0xFF2B2B2B),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.grey.shade300,
    secondaryVariant: Colors.grey.shade200,
    primary: Colors.teal,
    primaryVariant: Colors.black,
    onPrimary: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w300,
    ),
    subtitle1: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    subtitle2: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    headline5: TextStyle(color: Colors.black),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
  ),
  appBarTheme: AppBarTheme(color: Colors.grey.shade200),
);
