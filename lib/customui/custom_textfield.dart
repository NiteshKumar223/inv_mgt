import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTxt;
  final bool obscureTxt;
  const CustomTextField(
      {super.key, required this.controller, required this.hintTxt, required this.obscureTxt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: controller,
        obscureText: obscureTxt,
        decoration: InputDecoration(
            hintText: hintTxt,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            focusColor: clrprimary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: clrprimary, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
