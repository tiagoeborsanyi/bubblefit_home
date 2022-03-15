import 'package:bubblefit_home/constants.dart';
import 'package:bubblefit_home/widgets/botton_nav_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/card_exercise.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: ListView(
                  children: const [
                    CardExercise(['2 Sets', '3 Sets']),
                    SizedBox(height: 15),
                    CardExercise(['3 Sets', '1 Sets', '1 Sets', '1 Sets']),
                    SizedBox(height: 15),
                    CardExercise(['2 Sets']),
                    SizedBox(height: 15),
                    CardExercise(['2 Sets', '3 Sets', '1 Sets']),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
