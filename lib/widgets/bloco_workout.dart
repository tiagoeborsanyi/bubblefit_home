import 'package:flutter/material.dart';

import '../constants.dart';

class BlocoWorkout extends StatelessWidget {
  const BlocoWorkout({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .9,
      // height: size.height * .3,
      padding: const EdgeInsets.only(top: 10, bottom: 4),
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
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              'Treino para Deltoide',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 3),
            Text(
              'Última sessão realizada: 15/03/22 - Posterior de coxa',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 14,
                  ),
            ),
            const SizedBox(height: 3),
            Text(
              'Ciclo 2 de 4 - 50% realizado',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 12,
                  ),
            ),
            const SizedBox(height: 13),
            SingleChildScrollView(
              // physics: ScrollPhysics,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    // width: size.width * .40,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    decoration: BoxDecoration(
                      color: bTertiaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'Deltoide',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: bTextColor,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * .40,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: bTertiaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'Posterior de coxa',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: bTextColor,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * .40,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: bTertiaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'Costa supra',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: bTextColor,
                            fontSize: 15,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Text('Iniciar treino'),
                style: ElevatedButton.styleFrom(primary: bBtnColor)),
          ],
        ),
      ),
    );
  }
}
