import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_header.dart';
import 'package:inv_mgt/model/qna_item.dart';

import '../customui/faqcard.dart';
import '../utils/colors.dart';

class ScreenFaqs extends StatefulWidget {
  const ScreenFaqs({super.key});

  @override
  State<ScreenFaqs> createState() => _ScreenFaqsState();
}

class _ScreenFaqsState extends State<ScreenFaqs> {
  List<QnaItem> qnadata = generateItems(20);

  Widget qnaspanellist() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          qnadata[index].isExpanded = !isExpanded;
        });
      },
      children: qnadata.map<ExpansionPanel>((QnaItem qnaItem) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Row(
              children: [
                Text(
                  qnaItem.question,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: isExpanded ? clrprimary : clrdark),
                ),
              ],
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(qnaItem.answer),
          ),
          isExpanded: qnaItem.isExpanded,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const CustomHeader(isLogedin: true),
          const SizedBox(height: 10.0),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(children: const [
                    Icon(Icons.arrow_back_ios, size: 15, color: clrprimary),
                    Text(
                      'Back',
                      style: TextStyle(color: clrprimary),
                    ),
                  ])),
              const SizedBox(width: 20.0),
            ],
          ),
          const SizedBox(height: 30.0),
          const Text(
            'Have Any Questions ?',
            style: TextStyle(
              fontSize: 24.0,
              color: clrdark,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: SizedBox(
              height: Height - 180,
              width: Width,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    FaqCard(
                      quesno: 'Q.1',
                      ques: 'How does the dashboard display the data ?',
                      ansno: 'Ans',
                      ans: 'The from the database is used to display the data to the dashboard.',
                    ),
                    FaqCard(
                      quesno: 'Q.2',
                      ques: 'How to add a new product ?',
                      ansno: 'Ans',
                      ans: "To add the new product click the Product side bar and the click on top right of the screen button clickk Add Product ther two method to add the new product. ",
                    ),
                    FaqCard(
                      quesno: 'Q.3',
                      ques: 'How to add a new vender ?',
                      ansno: 'Ans',
                      ans: "To add new vender click on left side bar venders and then click on top right corner add venders the fill the form and Add vendor button click.",
                    ),
                    FaqCard(
                      quesno: 'Q.4',
                      ques: 'How to setup delivery integration ?',
                      ansno: 'Ans',
                      ans: "To create delivery integration click left side bar delivery and the click on create integration.",
                    ),
                    FaqCard(
                      quesno: 'Q.5',
                      ques: 'Can I change the profile info ?',
                      ansno: 'Ans',
                      ans: "Yes, You can change your profile info by clicking on your profile picture on the top of the screen.",
                    ),
                    const SizedBox(height: 30.0)
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
