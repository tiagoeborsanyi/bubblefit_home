import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';

class ChartsHome extends StatelessWidget {
  const ChartsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chart<void>(
        state: ChartState.bar(
          ChartData.fromList(
            <double>[1, 3, 4, 2, 7, 6, 2, 5]
                .map((e) => BarValue<void>(e))
                .toList(),
          ),
          itemOptions: const BarItemOptions(
            padding: EdgeInsets.symmetric(horizontal: 8),
            radius: BorderRadius.vertical(top: Radius.circular(42)),
          ),
          backgroundDecorations: [
            GridDecoration(
              showVerticalGrid: false,
              showHorizontalGrid: false,
            ),
            VerticalAxisDecoration(
              showValues: true,
              lineColor: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
