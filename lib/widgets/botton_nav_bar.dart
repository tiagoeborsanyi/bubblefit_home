import 'package:bubblefit_home/constants.dart';
import 'package:flutter/material.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 50,
      color: bSecondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottonNavItem(
              title: 'Home', press: () {}, icon: Icons.home, isActive: true),
          BottonNavItem(
              title: 'Workouts', press: () {}, icon: Icons.fitness_center),
          BottonNavItem(
              title: 'Estatistica', press: () {}, icon: Icons.graphic_eq),
          BottonNavItem(
              title: 'Configurações', press: () {}, icon: Icons.settings)
        ],
      ),
    );
  }
}

class BottonNavItem extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;
  final IconData icon;

  const BottonNavItem({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: !isActive ? Colors.grey.shade400 : Colors.white,
            size: 25,
          ),
        ],
      ),
    );
  }
}
