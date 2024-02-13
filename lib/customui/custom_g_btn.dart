import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomGBtn extends StatelessWidget {
  final VoidCallback ontap;
  const CustomGBtn({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: ontap,
        style: OutlinedButton.styleFrom(
          fixedSize: const Size(370, 40),
          side: BorderSide(color: clrdark, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/g.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 5.0),
          const Text(
            "Continue with Google",
            style: TextStyle(fontSize: 16.0, color: clrdark),
          )
        ]));
  }
}
