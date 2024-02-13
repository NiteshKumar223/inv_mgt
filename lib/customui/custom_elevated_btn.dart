

import 'package:flutter/material.dart';
import 'package:inv_mgt/utils/colors.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onpressed;
  const CustomElevatedBtn({super.key, required this.btnName,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: clrprimary,
        fixedSize: Size(370, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          ),
      ),
      child: Text(
        btnName,
        style: TextStyle(
          fontSize: 16.0,
          color: clrwhite,
        ),
      ),
    );
  }
}