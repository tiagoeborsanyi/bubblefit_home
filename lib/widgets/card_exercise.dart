import 'package:flutter/material.dart';

import '../constants.dart';

class CardExercise extends StatelessWidget {
  final List<String> numSets;

  const CardExercise(
    this.numSets, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: bSecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/bubblefit-c1d94.appspot.com/o/image0012bc1b-b28d-4f5d-8d48-0fc03b18a6c8.jpg?alt=media",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SOULDER PRESS",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: bTextColor, fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                color: bTertiaryColor,
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: bTextColor, width: .7)),
                            child: const Text(
                              'COSTA',
                              style: TextStyle(
                                color: bTextColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            // height: 45,
                            width: 100,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: bBtnColor,
                              borderRadius: BorderRadius.circular(6),
                              // shape: BoxShape.circle,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Métricas",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.graphic_eq_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: numSets
                    .map((e) => ItemSetCard(
                        reps: '10 Reps', sets: e, carga: '40Kg Carga'))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemSetCard extends StatelessWidget {
  final String reps, sets, carga;

  const ItemSetCard({
    Key? key,
    required this.reps,
    required this.sets,
    required this.carga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              reps,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white, fontSize: 14),
            ),
            Text(
              sets,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white, fontSize: 14),
            ),
            Text(
              carga,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
