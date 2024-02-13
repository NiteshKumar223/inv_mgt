import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WeightedScoreChart extends StatelessWidget {
  final stockdata = <String, double>{
    "low_stock": 20,
    "arriv_stock": 55,
    "out_of_stock": 25,
  };
  final legendLabels = <String, String>{
    "low_stock": "Low Stock",
    "arriv_stock": "Arriving Stock",
    "out_of_stock": " Out of Stock",
  };
  final colorList = <Color>[
    Colors.blue,
    Colors.green.shade500,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return PieChart(
      dataMap: stockdata,
      chartRadius: Width * 0.11,
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
      ringStrokeWidth: 35,
      // chartLegendSpacing:Width>1200? 40:60,
    );
  }
}
