

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:inv_mgt/utils/colors.dart';

class FaqCard extends StatelessWidget {
  String quesno, ques, ansno, ans;

  FaqCard(
      {super.key,
      required this.quesno,
      required this.ques,
      required this.ansno,
      required this.ans});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: clrgrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ExpansionTile(
          textColor: clrprimary,
          leading: quesno.text.fontWeight(FontWeight.w500).size(24.0).make(),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ques.text.fontWeight(FontWeight.w500).size(24.0).make(),
          ),
          children: [
            SizedBox(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ansno.text.color(clrprimary).bold.make(),
                      const SizedBox(width: 35.0),
                      SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width-222,
                        child: Wrap(
                          runAlignment: WrapAlignment.center,
                          children:[ ans.text.make()]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
