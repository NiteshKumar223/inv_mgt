import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomPlusbtn extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  final double height;
  final double width;
  const CustomPlusbtn({super.key, required this.btnName, required this.ontap, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: clrprimary,
              //border: Border.all(color: clrlink, width: 0.5),
              borderRadius: BorderRadius.circular(10.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, color: clrwhite, size: 18.0),
              const SizedBox(width: 5.0),
              Text(
                btnName,
                style: const TextStyle(
                    fontSize: 13.0, fontWeight: FontWeight.w400, color: clrwhite),
              ),
            ],
          )),
    );
  }
}
