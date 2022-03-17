import 'package:bubblefit_home/model/theme_model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeModel>(
      create: (BuildContext context) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubblefit home',
      theme: Provider.of<ThemeModel>(context).currentTheme,

      // home: const HomeScreen(),
      home: const HomeScreen(),
    );
  }
}
