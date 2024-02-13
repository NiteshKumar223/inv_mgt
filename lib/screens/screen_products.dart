import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_cont_btn.dart';
import 'package:inv_mgt/customui/custom_elevated_btn.dart';
import 'package:inv_mgt/customui/custom_plusbtn.dart';
import 'package:inv_mgt/customui/custom_textfield.dart';
import 'package:inv_mgt/customui/sort_by_dropdown.dart';
import 'package:inv_mgt/customui/vendor_dropdown.dart';

import '../utils/colors.dart';

class ScreenProducts extends StatefulWidget {
  const ScreenProducts({super.key});

  @override
  State<ScreenProducts> createState() => _ScreenProductsState();
}

class _ScreenProductsState extends State<ScreenProducts> {
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController prodnamecontr = TextEditingController();
  TextEditingController qtystockcontr = TextEditingController();
  TextEditingController lowstockcontr = TextEditingController();
  TextEditingController costpricecontr = TextEditingController();
  TextEditingController sellpricecontr = TextEditingController();
  TextEditingController additnotescontr = TextEditingController();

  var currentscreen;
  @override
  void initState() {
    currentscreen = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var Height = screensize.height;
    var Width = screensize.width;

    // 1st productscreen
    Widget productlist = SizedBox(
      child: Column(
        children: <Widget>[
          // first row ui
          SizedBox(
            height: 100.0,
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
                      color: clrprimary,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.search,
                    color: clrwhite,
                  ),
                ),
              ),
              SizedBox(width: Width > 1200 ? 50 : 30),
              SizedBox(
                height: 80,
                width: Width > 1200 ? Width * 0.16 : 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(" Sort By"),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: clrgrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const SortByDropdown(),
                    ),
                  ],
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
                        btnName: "Add Products",
                        ontap: () {
                          setState(() {
                            currentscreen = 2;
                          });
                        },
                        height: 40,
                        width: 180,
                      ),
                      const Text("or scan a barcode"),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          // second row ui
          Container(
            height: 50,
            width: Width,
            color: clrloginbg,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width:Width>1100?Width*0.08: 60),
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 18,
                    color: clrtxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width:Width>1200?Width*0.13: 110),
                const Text(
                  "In Stock",
                  style: TextStyle(
                    fontSize: 18,
                    color: clrtxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width:Width>1200?Width*0.09: 25),
                const Text(
                  "Cost Price",
                  style: TextStyle(
                    fontSize: 18,
                    color: clrtxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width:Width>1200?Width*0.10: 30),
                const Text(
                  "Selling Price",
                  style: TextStyle(
                    fontSize: 18,
                    color: clrtxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(width:Width>1300?Width*0.13: 40),
                const Text(
                  "Notes",
                  style: TextStyle(
                    fontSize: 18,
                    color: clrtxt,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //third container ui for list
          Container(
            height: Height - 244,
            width: Width,
            // color: Colors.purple.shade100,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: ((context, index) {
                  return Container(
                      height: 80,
                      width: Width,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: clrsubtlebg))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  // color: clrprimary,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset("assets/images/medicn.png",
                                    height: 40, width: 40),
                              ),
                              Container(
                                height: 80,
                                width: 150,
                                padding: const EdgeInsets.all(5),
                                child: const Center(
                                  child: Text(
                                    "Remdesivir Remder Remdesivir Remir 20 mg",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: clrtxt,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "35",
                            style: TextStyle(
                              fontSize: 14,
                              color: clrtxt,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "Rs. 2300",
                            style: TextStyle(
                              fontSize: 14,
                              color: clrtxt,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            "Rs. 3000",
                            style: TextStyle(
                              fontSize: 14,
                              color: clrtxt,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 250,
                            child: const Center(
                              child: Text(
                                "Will be in high demand so order extra.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: clrtxt,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                })),
          )
        ],
      ),
    );

    // 2nd productscreen
    Widget productaddbtn = Container(
      height: Height - 95,
      width: Width,
      decoration: BoxDecoration(
        // color: clrsubtlebg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Height > 800 ? Height * 0.395 : Height * 0.65,
            width: Width > 1400 ? Width * 0.4 : Width * 0.35 + 5,
            decoration: BoxDecoration(
              border: Border.all(color: clrgrey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Manual Method",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 250,
                    // color: clrlink,
                    child: Image.asset("assets/images/manualaddprod.PNG"),
                  ),
                  CustomPlusbtn(
                    btnName: "Add Product Manually",
                    ontap: () {
                      setState(() {
                        currentscreen = 3;
                      });
                    },
                    height: 40,
                    width: 250,
                  )
                ]),
          ),
          const Text("OR", style: TextStyle(fontSize: 30)),
          Container(
            height: Height > 800 ? Height * 0.395 : Height * 0.65,
            width: Width > 1400 ? Width * 0.4 : Width * 0.35 + 5,
            decoration: BoxDecoration(
              border: Border.all(color: clrgrey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Scan Code",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 250,
                    // color: clrloginbg,
                    child: Image.asset("assets/images/scanaddprod.PNG"),
                  ),
                  CustomPlusbtn(
                    btnName: "Scan Bar Code",
                    ontap: () {
                      setState(() {
                        currentscreen = 4;
                      });
                    },
                    height: 40,
                    width: 250,
                  )
                ]),
          ),
        ],
      ),
    );

    // 3rd productscreen
    Widget productaddform = SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/medicn.png'),
                ),
                const SizedBox(height: 20),
                CustomContBtn(
                  width: 200,
                  clr: clrprimary,
                  clrbtntxtname: clrwhite,
                  ontap: () {},
                  btnName: 'Browse photos',
                ),
                const SizedBox(height: 20),
                CustomContBtn(
                  width: 200,
                  clr: Colors.red,
                  clrbtntxtname: clrwhite,
                  ontap: () {},
                  btnName: 'Remove photo',
                ),
              ]),
          SizedBox(width: Width > 1200 ? 80 : 50),
          SizedBox(
            height: Height - 95,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 15, bottom: 5),
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomTextField(
                    controller: prodnamecontr,
                    hintTxt: 'Ramesh',
                    obscureTxt: false),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 15, bottom: 5),
                  child: Text(
                    'Quantity in stock',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomTextField(
                    controller: qtystockcontr,
                    hintTxt: '280',
                    obscureTxt: false),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 15, bottom: 5),
                  child: Text(
                    'Low stock warning',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomTextField(
                    controller: lowstockcontr,
                    hintTxt: '12',
                    obscureTxt: false),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 5, top: 15, bottom: 5),
                          child: Text(
                            'Cost Price (1 item)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 190,
                          child: CustomTextField(
                              controller: costpricecontr,
                              hintTxt: '1500',
                              obscureTxt: false),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 5, top: 15, bottom: 5),
                          child: Text(
                            'Selling Price (1 item)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 190,
                          child: CustomTextField(
                              controller: sellpricecontr,
                              hintTxt: '3000',
                              obscureTxt: false),
                        ),
                      ],
                    ),
                  ],
                ),
                // const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 10, bottom: 5),
                  child: Text(
                    'Preffered Vender',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: clrgrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: VendorDropdown(),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 10, bottom: 5),
                  child: Text(
                    'Preffered Vender',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  width: 400,
                  child: TextFormField(
                    controller: additnotescontr,
                    obscureText: false,
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: 'Add any notes',
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
                const SizedBox(height: 30),
                Row(
                  children: [
                    CustomContBtn(
                      width: 190,
                      clr: clrprimary,
                      clrbtntxtname:clrwhite,
                      ontap: () {
                        setState(() {
                        currentscreen = 1;
                      });
                      },
                      btnName: 'Add Product',
                    ),
                    const Spacer(),
                    CustomContBtn(
                      width: 190,
                      clr: clrwhite,
                      clrbtntxtname: clrdark,
                      ontap: () {},
                      btnName: "Cancel",
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    
    // 4th productscreen
    Widget productaddscan = SizedBox(
      child: Column(
        children: [
          const Text("scan bar code screen"),
          TextButton(
              onPressed: () {
                setState(() {
                  currentscreen = 2;
                });
              },
              child: const Text("move back")),
        ],
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
              productlist
            else if (currentscreen == 2)
              productaddbtn
            else if (currentscreen == 3)
              productaddform
            else if (currentscreen == 4)
              productaddscan
            else
              productlist
          ],
        ));
  }
}
