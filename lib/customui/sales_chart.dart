import 'package:flutter/material.dart';
import 'package:inv_mgt/model/sales_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:inv_mgt/utils/colors.dart';

class SalesChart extends StatefulWidget {
  const SalesChart({super.key});

  @override
  State<SalesChart> createState() => _SalesChartState();
}

class _SalesChartState extends State<SalesChart> {

  final List<SalesChartModel> saleschartdata = [
    SalesChartModel(
      unitstring: 'Units>150', 
      unitquantity: 85, 
      color: charts.ColorUtil.fromDartColor(Colors.deepPurple.shade300),
    ),
    SalesChartModel(
      unitstring: 'Units>50', 
      unitquantity: 35, 
      color: charts.ColorUtil.fromDartColor(Colors.deepPurple.shade200),
    ),
    SalesChartModel(
      unitstring: 'Units<50', 
      unitquantity: 75, 
      color: charts.ColorUtil.fromDartColor(Colors.deepPurple.shade100),
    ),

  ];

  @override
  Widget build(BuildContext context) {

    List<charts.Series<SalesChartModel, String>> series =[
      charts.Series(
        id: "sales",
        data: saleschartdata,
        domainFn: (SalesChartModel series, index) => series.unitstring,
        measureFn: (SalesChartModel series, index) => series.unitquantity,
        colorFn: (SalesChartModel series, index) => series.color,
      )
    ];

    return charts.BarChart(
      
      series,
      animate: true,
    );
  }
}