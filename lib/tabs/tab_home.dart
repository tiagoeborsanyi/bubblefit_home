import 'package:bubblefit_home/screens/bloco_exercises_sessions.dart';
import 'package:bubblefit_home/screens/exercises_sessions.dart';
import 'package:bubblefit_home/widgets/bloco_workout.dart';
import 'package:bubblefit_home/widgets/charts_home.dart';
import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  const TabHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocoWorkout(size: size),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocoExercisesSessions(
                size: size,
                title: 'Exercicios',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExercisesSessions();
                      },
                    ),
                  );
                },
              ),
              BlocoExercisesSessions(
                size: size,
                title: 'Sessões',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ExercisesSessions();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Acompanhe seu desempenho',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.graphic_eq,
              ),
              const SizedBox(width: 9),
              Text(
                'Média de peso levantado nos ultimos 7 dias',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Expanded(
            child: ChartsHome(),
          )
        ],
      ),
    );
  }
}
