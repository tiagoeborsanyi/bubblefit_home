import 'package:bubblefit_home/screens/exercises_sessions.dart';
import 'package:bubblefit_home/widgets/botton_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 22,
                    ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(
                    Icons.graphic_eq,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 9),
                  Text(
                    'Média de peso levantado nos ultimos 7 dias',
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Expanded(
                child: VerticalBarLabelChart(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalBarLabelChart extends StatelessWidget {
  // final List<charts.Series> seriesList;
  final bool animate;

  // ignore: use_key_in_widget_constructors
  const VerticalBarLabelChart({this.animate = false});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData() {
    return VerticalBarLabelChart(
      // _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit,
  // it will draw outside of the bar.
  // Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      _createSampleData(),
      animate: animate,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: const charts.OrdinalAxisSpec(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
              '\$${sales.sales.toString()}')
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

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
      ),
    );
  }
}
