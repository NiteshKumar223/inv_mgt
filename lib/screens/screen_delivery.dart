import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_cont_btn.dart';
import 'package:inv_mgt/customui/custom_textfield.dart';

import '../utils/colors.dart';

class ScreenDelivery extends StatefulWidget {
  const ScreenDelivery({super.key});

  @override
  State<ScreenDelivery> createState() => _ScreenDeliveryState();
}

class _ScreenDeliveryState extends State<ScreenDelivery> {
  TextEditingController accountcontroller = TextEditingController();

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return clrprimary;
    }
    return clrsuccess;
  }

  bool isChecked = false;
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
    // 1st delivery screen
    Widget deliveryservlist = Column(
      children: <Widget>[
        Container(
          height: 200,
          width: Width > 1200 ? Width * 0.6 : 720,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: clrgrey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: clrgrey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset('assets/images/del1.png'),
            ),
            const SizedBox(width: 50.0),
            SizedBox(
              height: 150,
              width: Width > 1200 ? Width * 0.39 : 465,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Yeet Delivery Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: clrdark,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60,
                    width: Width > 1200 ? Width * 0.54 : 450,
                    child: const Text(
                      'Delhivery’s aim is to build the operating system for commerce. We provide express parcel transportation, PTL and TL freight, cross-border and supply chain services to over 27000 customers.',
                      style: TextStyle(fontSize: 14, color: clrdark),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomContBtn(
                    width: 150,
                    clr: clrprimary,
                    ontap: () {
                      setState(() {
                        currentscreen = 2;
                      });
                    },
                    btnName: 'Create Integration',
                    clrbtntxtname: clrwhite,
                  ),
                ],
              ),
            )
          ]),
        ),
        const SizedBox(height: 25),
        Container(
          height: 200,
          width: Width > 1200 ? Width * 0.6 : 720,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: clrgrey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: clrgrey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset('assets/images/del2.png'),
            ),
            const SizedBox(width: 50.0),
            SizedBox(
              height: 150,
              width: Width > 1200 ? Width * 0.39 : 465,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Segway Delivery Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: clrdark,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60,
                    width: Width > 1200 ? Width * 0.54 : 450,
                    child: const Text(
                      'Delhivery’s aim is to build the operating system for commerce. We provide express parcel transportation, PTL and TL freight, cross-border and supply chain services to over 27000 customers.',
                      style: TextStyle(fontSize: 14, color: clrdark),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomContBtn(
                    width: 150,
                    clr: clrsuccess,
                    ontap: () {
                      setState(() {
                        currentscreen = 3;
                      });
                    },
                    btnName: 'Track Details',
                    clrbtntxtname: clrwhite,
                  ),
                ],
              ),
            )
          ]),
        ),
        const SizedBox(height: 25),
        Container(
          height: 200,
          width: Width > 1200 ? Width * 0.6 : 720,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: clrgrey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: clrgrey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset('assets/images/del3.png'),
            ),
            const SizedBox(width: 50.0),
            SizedBox(
              height: 150,
              width: Width > 1200 ? Width * 0.39 : 465,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'DHL Delivery Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: clrdark,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60,
                    width: Width > 1200 ? Width * 0.54 : 450,
                    child: const Text(
                      'Delhivery’s aim is to build the operating system for commerce. We provide express parcel transportation, PTL and TL freight, cross-border and supply chain services to over 27000 customers.',
                      style: TextStyle(fontSize: 14, color: clrdark),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomContBtn(
                    width: 150,
                    clr: clrsuccess,
                    ontap: () {},
                    btnName: 'Track Details',
                    clrbtntxtname: clrwhite,
                  ),
                ],
              ),
            )
          ]),
        ),
      ],
    );

    // 2nd delivery screen
    Widget deliverysetupintig = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(color: clrgrey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/del1.png'),
              ),
              const SizedBox(width: 50),
              Container(
                height: 160,
                width: 500,
                // color: clraccenting,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Yeet Delivery Services',
                        style: TextStyle(
                          fontSize: 22,
                          color: clrdark,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Yeet Delivery Services is a reliable and efficient delivery company dedicated to providing seamless transportation solutions. With a strong focus on customer satisfaction, we specialize in delivering products from stores directly to customers' doorsteps, ensuring timely and secure service. Additionally, we offer store-to-store delivery, facilitating smooth logistics between businesses",
                        style: TextStyle(
                          fontSize: 14,
                          color: clrdark,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ]),
              )
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: Width > 1200
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Container(
                height: 270.0,
                width: 400.0,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: clrgrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Set up integration',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: clrdark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text('Account Number'),
                    const SizedBox(height: 5),
                    CustomTextField(
                      controller: accountcontroller,
                      hintTxt: '1234-5678-9101',
                      obscureTxt: false,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 70,
                          width: 330,
                          child: Text(
                              "By signing up you agree to our.By signing up you agree to our.By signing up you agree to our.By signing up you agree to our.",
                              textAlign: TextAlign.justify),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomContBtn(
                      width: 380.0,
                      clr: clrprimary,
                      ontap: () {
                        setState(() {
                          currentscreen = 1;
                        });
                      },
                      btnName: 'Create Integration',
                      clrbtntxtname: clrwhite,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );

    // 3rd delivery screen
    Widget deliveryproductorder = Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: clrgrey),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Image.asset('assets/images/del2.png'),
              ),
              const SizedBox(width: 15.0),
              const Text(
                'Segway Delivery Services',
                style: TextStyle(
                    fontSize: 24, color: clrdark, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Products Ordered',
            style: TextStyle(
                fontSize: 20, color: clrdark, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: Height - 211,
            width: Width,
            // color: clrsuccess,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentscreen = 4;
                      });
                    },
                    child: Container(
                      height: 150.0,
                      width: Width,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        // color: clrbtnred,
                        border: Border.all(color: clrgrey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: clrgrey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset('assets/images/medicn.png'),
                        ),
                        const SizedBox(width: 15.0),
                        SizedBox(
                          height: 120,
                          width: Width > 1200 ? Width * 0.4 : Width / 3.5,
                          // color: clrerror,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Paracetamol 500 mg',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: clrdark,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Paracetamol (Panadol, Calpol, Alvedon) is an analgesic and antipyretic drug that is used to temporarily relieve mild-to-moderate pain and fever.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: clrdark,
                                ),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        SizedBox(
                          height: 120,
                          width: Width > 1300 ? Width * 0.17 : 180,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: clrprimary,
                                  ),
                                  child: Row(children: const [
                                    Icon(Boxicons.bxs_truck, color: clrwhite),
                                    SizedBox(width: 5),
                                    Text(
                                      'Arrive Date: 08/02/2024',
                                      style: TextStyle(
                                        color: clrwhite,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(height: 10.0),
                                Container(
                                  height: 30,
                                  width: Width > 1200 ? Width * 0.08 : 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: clrlink,
                                  ),
                                  child: Row(children: const [
                                    Icon(Boxicons.bx_gift, color: clrwhite),
                                    SizedBox(width: 5),
                                    Text(
                                      'QTY: 12',
                                      style: TextStyle(
                                        color: clrwhite,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ]),
                                )
                              ]),
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );

    // 4th delivery screen
    Widget deliveryordertrack = Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentscreen = 3;
                  });
                },
                child: Container(
                  height: 80,
                  width:80,
                  decoration: BoxDecoration(
                    border: Border.all(color: clrgrey),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset('assets/images/del2.png'),
                ),
              ),
              const SizedBox(width: 15.0),
              const Text(
                'Segway Delivery Services',
                style: TextStyle(
                    fontSize: 25, color: clrdark, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          Container(
            height: 120,
            width: Width,
            color: clraccenting,
          ),
          const SizedBox(height: 30),
          const Text(
            'Products Ordered',
            style: TextStyle(
                fontSize: 22, color: clrdark, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 15),
          Container(
            height: 150.0,
            width: Width,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              // color: clrbtnred,
              border: Border.all(color: clrgrey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: clrgrey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/medicn.png'),
              ),
              const SizedBox(width: 15.0),
              SizedBox(
                height: 120,
                width: Width > 1200 ? Width * 0.4 : Width / 3.5,
                // color: clrerror,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Paracetamol 500 mg',
                      style: TextStyle(
                        fontSize: 16,
                        color: clrdark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Paracetamol (Panadol, Calpol, Alvedon) is an analgesic and antipyretic drug that is used to temporarily relieve mild-to-moderate pain and fever.',
                      style: TextStyle(
                        fontSize: 14,
                        color: clrdark,
                      ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15),
              SizedBox(
                height: 120,
                width: Width > 1300 ? Width * 0.17 : 180,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: clrprimary,
                        ),
                        child: Row(children: const [
                          Icon(Boxicons.bxs_truck, color: clrwhite),
                          SizedBox(width: 5),
                          Text(
                            'Arrive Date: 08/02/2024',
                            style: TextStyle(
                              color: clrwhite,
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 30,
                        width: Width > 1200 ? Width * 0.08 : 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: clrlink,
                        ),
                        child: Row(children: const [
                          Icon(Boxicons.bx_gift, color: clrwhite),
                          SizedBox(width: 5),
                          Text(
                            'QTY: 12',
                            style: TextStyle(
                              color: clrwhite,
                              fontSize: 14,
                            ),
                          ),
                        ]),
                      )
                    ]),
              ),
            ]),
          )
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
              deliveryservlist
            else if (currentscreen == 2)
              deliverysetupintig
            else if (currentscreen == 3)
              deliveryproductorder
            else if (currentscreen == 4)
              deliveryordertrack
            else
              deliveryservlist
          ],
        ));
  }
}
