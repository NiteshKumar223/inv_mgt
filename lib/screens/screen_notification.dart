import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_header.dart';
import 'package:inv_mgt/utils/colors.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({super.key});

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: Height,
      width: Width,
      decoration: const BoxDecoration(
          // border: Border.all(color: clrgrey),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomHeader(isLogedin: true),
          const SizedBox(height: 20),
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
              const SizedBox(width: 30.0),
              const Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w600, color: clrdark),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 20),
            child: Container(
              height: Height - 120,
              width: Width,
              // color: clraccenting,
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  width: Width,
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: clrgrey),
                  )),
                  child: Row(children: [
                    const SizedBox(
                      height: 50,
                      width: 60,
                    ),
                    SizedBox(width: Width>1200?30:10),
                    CircleAvatar(
                      radius: 25.0,
                      child: Image.asset('assets/images/medicn.png'),
                    ),
                    SizedBox(width:Width>1200?Width*0.05: 20),
                    const SizedBox(
                      height: 50,
                      width: 200,
                      child: Text(
                        'Name of the medicine',
                      ),
                    ),
                    SizedBox(width:Width>1200?Width*0.11: 60),
                    Container(
                      height: 30.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: clrbtnred,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Center(
                          child: Text(
                        "Out of stock",
                        style: TextStyle(fontSize: 14.0, color: clrwhite),
                      )),
                    ),
                    SizedBox(width:Width>1200?Width*0.11: 60),
                    Container(
                      height: 40.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: clrgrey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Boxicons.bx_cart, color: clrprimary),
                          SizedBox(width: 15.0),
                          Text(
                            "Order this item",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: clrprimary,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width:Width>1300?Width*0.08: 30.0),
                    Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: clrlink),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Icon(Icons.check,color: clrlink),
                      ),
                    )
                  ]),
                );
              }),
            ),
          )
        ],
      ),
    ));
  }
}
