import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class StatisticsChart extends StatelessWidget {
  final statisticsdata = <String, double>{
    "items_sold": 75,
    "items_Unsold": 25,
  };
  final legendLabels = <String, String>{
    "items_sold": 'Items Sold',
    "items_Unsold": 'Items Unsold',
  };
  final colorList = <Color>[
    Colors.green.shade500,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return PieChart(
      dataMap: statisticsdata,
      chartRadius: Width * 0.08,
      legendLabels: legendLabels,
      legendOptions: LegendOptions(
        legendTextStyle:
            TextStyle(fontSize: Width * 0.013, fontWeight: FontWeight.w500),
        showLegendsInRow: true,
        legendPosition: LegendPosition.bottom,
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValues: false,
      ),
      colorList: colorList,
      chartType: ChartType.ring,
      ringStrokeWidth: 25,
      // chartLegendSpacing:Width>1200? 40:60,
    );
  }
}
