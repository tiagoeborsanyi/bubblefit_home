import 'package:bubblefit_home/screens/exercises_sessions.dart';
import 'package:bubblefit_home/widgets/bloco_workout.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
            child: VerticalBarLabelChart(),
          )
        ],
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
    return const VerticalBarLabelChart(
      // _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }
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
      domainAxis: const charts.OrdinalAxisSpec(
        showAxisLine: false,
        renderSpec: charts.NoneRenderSpec(),
      ),
      defaultRenderer: charts.BarLaneRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(30)),
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
          colorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
          // radiusPxFn: ,
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
