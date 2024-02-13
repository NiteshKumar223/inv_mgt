import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_cont_btn.dart';
import 'package:inv_mgt/customui/custom_elevated_btn.dart';
import 'package:inv_mgt/customui/product_name_dropdown.dart';
import 'package:inv_mgt/customui/statistics_chart.dart';

import '../customui/custom_plusbtn.dart';
import '../customui/custom_textfield.dart';
import '../customui/sales_chart.dart';
import '../customui/weighted_score_chart.dart';
import '../utils/colors.dart';

class ScreenBilling extends StatefulWidget {
  const ScreenBilling({super.key});

  @override
  State<ScreenBilling> createState() => _ScreenBillingState();
}

class _ScreenBillingState extends State<ScreenBilling> {
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController costnamecontroller = TextEditingController();
  TextEditingController descricontroller = TextEditingController();
  TextEditingController qtycontroller = TextEditingController();
  var currentscreen;
  @override
  void initState() {
    currentscreen = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

    // 1st billing ui
    Widget billingscreen1 = SizedBox(
        child: Column(children: <Widget>[
      // first row ui
      SizedBox(
        height: 80.0,
        width: Width,
        // color: clraccenting,
        child: Row(children: [
          SizedBox(
            height: 40,
            width: Width > 1200 ? Width * 0.35 : 300,
            child: CustomTextField(
                controller: searchcontroller,
                hintTxt: "Search",
                obscureTxt: false),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              debugPrint("search clicked");
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: clrprimary, borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.search,
                color: clrwhite,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPlusbtn(
                    btnName: "Add Bill",
                    ontap: () {
                      setState(() {
                        currentscreen = 2;
                      });
                    },
                    height: 40,
                    width: 180,
                  ),
                  const Text("or scan a Prescription"),
                ],
              ),
            ),
          ),
        ]),
      ),

      // 2nd row container ui
      SizedBox(
        height: 260,
        // color: clrdark,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: Height > 800 ? Height * 0.395 : Height * 0.35,
            width: Width > 1400 ? Width * 0.42 - 1.5 : Width * 0.38 + 5,
            decoration: BoxDecoration(
              color: clrwhite,
              border: Border.all(color: clrsubtletxt),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sales (in units)",
                    style: TextStyle(
                      fontSize: Width > 1100 ? 22 : 20,
                      fontWeight: FontWeight.w600,
                      color: clrtxt,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 350,
                    child: SalesChart())
                ]),
          ),
          const SizedBox(width: 15.0),
          Container(
            height: Height > 800 ? Height * 0.395 : Height * 0.35,
            width: Width > 1400 ? Width * 0.42 - 1.5 : Width * 0.38 + 5,
            decoration: BoxDecoration(
              color: clrwhite,
              border: Border.all(color: clrsubtletxt),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Statistics",
                      style: TextStyle(
                        fontSize: Width > 1100 ? 22 : 20,
                        fontWeight: FontWeight.w600,
                        color: clrtxt,
                      ),
                    ),
                  ),
                  StatisticsChart()
                ]),
          ),
        ]),
      ),
      const SizedBox(height: 15.0),
      //3rd row ui
      Container(
          height: 90,
          width: Width,
          decoration: BoxDecoration(
            border: Border.all(color: clrgrey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue.shade100),
                  child: const Center(
                    child: Text(
                      "684",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: clrlink),
                    ),
                  ),
                ),
                const Text(
                  'Total remaining inventory',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 60,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blue.shade100),
                child: const Center(
                  child: Text(
                    "1000",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: clrlink),
                  ),
                ),
              ),
              const Text(
                'Maximum inventory limit',
                style: TextStyle(fontSize: 16),
              ),
            ]),
          ])),
      const SizedBox(height: 15),
      // 4th roe invoices text ui
      Row(
        children: [
          const Text(
            'Invoices',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      // 5list heading
      Container(
        height: 40,
        width: Width,
        color: clrgrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Customer Name',
              style: TextStyle(
                fontSize: 16,
                color: clrtxt,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Total Amount',
              style: TextStyle(
                fontSize: 16,
                color: clrtxt,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 25),
            Text(
              'Desription',
              style: TextStyle(
                fontSize: 16,
                color: clrtxt,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 30),
            Text(
              'Date',
              style: TextStyle(
                fontSize: 16,
                color: clrtxt,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

      // 6th list ui
      SizedBox(
        height: 179,
        width: Width,
        // color: clrsubtlebg,
        child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            height: 60,
            width: Width,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: clrgrey, width: 1.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Ramesh Singh',
                  style: TextStyle(
                      fontSize: 16, color: clrtxt, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Rs. 1540',
                  style: TextStyle(
                      fontSize: 16, color: clrtxt, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Will be in high demand so order extra',
                  style: TextStyle(
                    fontSize: 14,
                    color: clrtxt,
                    // fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  'Jul 11, 2015',
                  style: TextStyle(
                      fontSize: 16, color: clrtxt, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        }),
      )
    ]));

    // 2nd billing screen
    Widget billingscreen2 = Container(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(15),
          height: Height - 190,
          width:Width>1200?900: 680,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: clrgrey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //1st row
              Container(
                  height: 80,
                  width: Width>1200?900: 680,
                  // color: clraccenting,
                  child: Row(
                    children: [
                      const SizedBox(width: 50),
                      SizedBox(
                        height: 80,
                        width: 180,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Rs. 4856',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: clrprimary,
                                ),
                              )
                            ]),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 80,
                        width: 180,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '8 Apr 2021',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: clrprimary,
                                ),
                              )
                            ]),
                      )
                    ],
                  )),

              const Text(
                'Customer Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                controller: costnamecontroller,
                hintTxt: 'Mr. Ramesh Singh',
                obscureTxt: false,
              ),
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 90,
                child: TextFormField(
                  controller: descricontroller,
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: 'Description',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      focusColor: clrprimary,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: clrprimary, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              // SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 22,
                      color: clrprimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  CustomPlusbtn(
                    btnName: 'Add Product',
                    ontap: () {},
                    height: 40,
                    width: 130,
                  ),
                ],
              ),
              Container(
                height: 275,
                width: Height,
                // color: clraccenting,
                child: ListView.builder(itemBuilder: (context, index) {
                  return SizedBox(
                    height:70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CircleAvatar(
                        radius: 22,
                        child: Image.asset('assets/images/man.png'),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Product Name',
                          style: TextStyle(fontSize: 14,color: clrdark,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: clrgrey),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: ProductNameDropdown(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const Text('Quantity',
                          style: TextStyle(fontSize: 14,color: clrdark,fontWeight: FontWeight.bold),
                          ),
                          CustomTextField(
                            controller: qtycontroller, 
                            hintTxt: '12....', 
                            obscureTxt: false,
                          )
                        ],),
                      ),
                      const Text(
                        'Rs. 345',
                        style: TextStyle(
                          fontSize: 18,
                          color: clrdark,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ]),
                  );
                }),
              )
            ],
          ),
        ),
        const SizedBox(height: 40.0),
        // two button save and cancel
        SizedBox(
          height: 35,
          width: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContBtn(
                width: 150.0,
                clr: clrprimary,
                clrbtntxtname: clrwhite,
                ontap: () {
                  setState(() {
                    currentscreen = 3;
                  });
                },
                btnName: 'Save',
              ),
              const SizedBox(width: 40),
              CustomContBtn(
                width: 150.0,
                clr: clrwhite,
                ontap: () {},
                btnName: 'Cancel',
                clrbtntxtname: clrdark,
              ),
            ],
          ),
        )
      ]),
    );

    // 3rd billing screen
    Widget billingscreen3 = SizedBox(
      child: Container(
        height: Height-94,
        width: Width>1200?900: 680,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(color: clrgrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            // 1st row container
            Container(
                  height: 80,
                  width: Width>1200?900: 680,
                  child: Row(
                    children: [
                      const SizedBox(width: 50),
                      SizedBox(
                        height: 80,
                        width: 180,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Rs. 4856',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: clrprimary,
                                ),
                              )
                            ]),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 80,
                        width: 170,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '8 Apr 2021',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: clrprimary,
                                ),
                              )
                            ]),
                      )
                    ],
                  )),
        const SizedBox(height: 15),
                  // 2nd ui
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      'Transaction ID',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '123456',
                      style: TextStyle(
                        fontSize: 14,
                        color: clrdark,
                      ),
                    )
                  ],),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 300,
                      child: Text(
                        'Mr. Perfect needs daily prescription and caring early this time order this next doses early',
                        style: TextStyle(
                          fontSize: 14,
                          color: clrdark,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      'Customer Name',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mr. Perfect',
                      style: TextStyle(
                        fontSize: 14,
                        color: clrdark,
                      ),
                    )
                  ],),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      'QTY',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 14,
                        color: clrdark,
                      ),
                    )
                  ],),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rs. 4000',
                      style: TextStyle(
                        fontSize: 14,
                        color: clrdark,
                      ),
                    )
                  ],),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 22,
                          color: clrprimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            currentscreen=1;
                          });
                        }, 
                        child: Text('Go Back',style: TextStyle(color: clrlink),),
                      )
                    ],
                  ),
                  // list header ui
                  const SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width:Width>1200?Width*0.09: 100),
                    const Text('Name',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width:Width>1200?Width*0.07: 50),
                    const Text('QTY',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width:Width>1200?Width*0.07: 50),
                    const Text('Price',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width:Width>1200?Width*0.13: 100),
                    const Text('Description',style: TextStyle(fontWeight: FontWeight.bold))
                  ],),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 277,
                    width: Width,
                    // color: clraccenting,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 70,
                          decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: clrgrey)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                child: Image.asset('assets/images/man.png'),
                              ),
                              const Text('Mr. Perfect'),
                              const Text('12'),
                              const Text('Rs. 1000'),
                              const SizedBox(
                                height: 70,
                                width: 300,
                                child: Center(
                                  child: Text(
                                    'Will be high demand so order extra medicine',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),

        ]),
      ),
    );

    return Container(
        height: Height,
        width: Width,
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(color: clrloginbg, width: 2.0),
          top: BorderSide(color: clrloginbg, width: 2.0),
          right: BorderSide(color: clrloginbg, width: 2.0),
        )),
        child: Column(
          children: [
            if (currentscreen == 1)
              billingscreen1
            else if (currentscreen == 2)
              billingscreen2
            else if (currentscreen == 3)
              billingscreen3
            else
              billingscreen1
          ],
        ));
  }
}
