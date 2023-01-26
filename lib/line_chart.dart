import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChart extends StatefulWidget {
  
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
    

  ];
  
  LineChart(LineChartData lineChartData);



  

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
      
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
              
            }



          ),
          borderData:   FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),

          ),
          
          lineBarsData: [
            LineChartBarData(spots: [
              FlSpot(0, 3),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 2.5),
              FlSpot(0, 3),
              FlSpot(0, 3),
              FlSpot(0, 3),
              FlSpot(0, 3),
              FlSpot(0, 3),
              FlSpot(0, 3),
            ],
            
            isCurved: true,
            barWidth: 5,
            //dotData: FlDotData(show: false),
            belowBarData: BarAreaData(

              show: true,
              
            )
            

            )
          ],
        ),
      );
}
