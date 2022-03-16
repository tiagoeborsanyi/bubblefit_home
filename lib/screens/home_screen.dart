import 'package:bubblefit_home/widgets/botton_nav_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bPrimaryColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottonNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * .9,
                height: size.height * .3,
                decoration: BoxDecoration(
                  color: bSecondaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Último workout realizado',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocoExercisesSessions(size: size, title: 'Exercicios'),
                  BlocoExercisesSessions(size: size, title: 'Sessões'),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Acompanhe seu desempenho',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 22,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlocoExercisesSessions extends StatelessWidget {
  final String title;
  const BlocoExercisesSessions({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * .12,
      width: size.width * .44,
      decoration: BoxDecoration(
        color: bSecondaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 20,
            ),
      ),
    );
  }
}
