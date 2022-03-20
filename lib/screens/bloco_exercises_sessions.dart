import 'package:flutter/material.dart';

class BlocoExercisesSessions extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const BlocoExercisesSessions(
      {Key? key, required this.size, required this.title, required this.press})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        // height: size.height * .12,
        padding: const EdgeInsets.symmetric(vertical: 23),
        width: size.width * .44,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
