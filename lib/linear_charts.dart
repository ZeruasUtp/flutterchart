import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class LinearCharts extends StatelessWidget {
  const LinearCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      Expenses(2, 120),
      Expenses(3, 218),
      Expenses(4, 95),
      Expenses(5, 360),
    ];

    List<charts.Series<Expenses, int>> series = [
      charts.Series<Expenses, int>(
          id: 'lineal',
          domainFn: (v, i) => v.day,
          measureFn: (v, i) => v.expense,
          data: data)
    ];

    return Center(
      child: SizedBox(
        height: 350.0,
        child: charts.LineChart(series),
      ),
    );
  }
}

class Expenses {
  final int day;
  final double expense;

  Expenses(this.day, this.expense);
}
