import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomGraph extends StatelessWidget {
  final List<Map<dynamic, dynamic>> data;

  CustomGraph({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 80,
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return Text('0 Hr', style: TextStyle(fontSize: 10, color: Colors.white));
                    case 20:
                      return Text('20 Hr', style: TextStyle(fontSize: 10, color: Colors.white));
                    case 40:
                      return Text('40 Hr', style: TextStyle(fontSize: 10, color: Colors.white));
                    case 60:
                      return Text('60 Hr', style: TextStyle(fontSize: 10, color: Colors.white));
                    case 80:
                      return Text('80 Hr', style: TextStyle(fontSize: 10, color: Colors.white));
                    default:
                      return Container();
                  }
                },
                interval: 20,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) {
              if ([0, 20, 40, 60, 80].contains(value.toInt())) {
                return FlLine(
                  color: Color(0xFFD9D9D9),
                  strokeWidth: 0.5,
                  dashArray: [2, 2],
                );
              }
              return FlLine(
                color: Colors.transparent, // No line for other values
              );
            },
            horizontalInterval: 20,
          ),
          barGroups: data
              .asMap()
              .entries
              .map(
                (entry) => BarChartGroupData(
                  x: entry.key,
                  barRods: [
                    BarChartRodData(
                      toY: entry.value['blueValue'],
                      color: Colors.blue,
                      width: 14,
                      borderRadius: BorderRadius.zero,
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: entry.value['whiteValue'],
                        color: Colors.grey[300]!,
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
