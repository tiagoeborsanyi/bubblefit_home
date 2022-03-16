import 'package:flutter/material.dart';

import 'package:bubblefit_home/constants.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubblefit home',
      theme: ThemeData(
        scaffoldBackgroundColor: bPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: bTextColor),
      ),

      // home: const HomeScreen(),
      home: const HomeScreen(),
    );
  }
}
