
import 'package:charts_flutter/flutter.dart' as charts;
class SalesChartModel{
  String unitstring;
  int unitquantity;
  final charts.Color color;
  SalesChartModel({
    required this.unitstring,
    required this.unitquantity,
    required this.color
});
}