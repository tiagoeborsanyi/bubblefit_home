import 'package:bubblefit_home/constants.dart';
import 'package:flutter/material.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: bSecondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
    );
  }
}

class BottonNavItem extends StatelessWidget {
  const BottonNavItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
