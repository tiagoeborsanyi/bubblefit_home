import 'package:bubblefit_home/widgets/card_exercise.dart';
import 'package:flutter/material.dart';

class ExercisesSessions extends StatelessWidget {
  const ExercisesSessions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          bottom: TabBar(
            labelColor: Theme.of(context).colorScheme.primaryVariant,
            // labelColor: Colors.red,
            tabs: const [
              Tab(
                text: 'Exercicios',
              ),
              Tab(
                text: 'Sessions',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ContentTabs(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class ContentTabs extends StatelessWidget {
  const ContentTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
