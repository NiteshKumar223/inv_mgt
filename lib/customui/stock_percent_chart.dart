import 'package:flutter/material.dart';
import 'package:inv_mgt/utils/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StockPercentChart extends StatelessWidget {
  const StockPercentChart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CircularPercentIndicator(
      radius:size.width==1000? size.width*0.073:size.width*0.065,
      lineWidth: 35,
      percent: 0.68,
      animation: true,
      progressColor: clrprimary,
      backgroundColor: Colors.purple.shade100,
      circularStrokeCap: CircularStrokeCap.round,
      footer: Padding(
        padding: EdgeInsets.only(top: size.width*0.02),
        child: Text(
          "68 %",
          style: TextStyle(
            fontSize: size.width * 0.015,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

    );
  }
}