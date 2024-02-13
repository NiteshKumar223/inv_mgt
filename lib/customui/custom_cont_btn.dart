import 'package:flutter/material.dart';
import 'package:inv_mgt/utils/colors.dart';

class CustomContBtn extends StatelessWidget {
  final double width;
  final Color clr;
  final VoidCallback ontap;
  final String btnName;
  final Color? clrbtntxtname;
  
  const CustomContBtn(
      {super.key,
      required this.width,
      required this.clr,
      required this.ontap,
      required this.btnName,
      this.clrbtntxtname,
   
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: clrprimary),
          color: clr,
        ),
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(fontSize: 16, color: clrbtntxtname),
          ),
        ),
      ),
    );
  }
}
