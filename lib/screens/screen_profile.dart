import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_cont_btn.dart';
import 'package:inv_mgt/customui/custom_header.dart';
import 'package:inv_mgt/customui/custom_textfield.dart';
import 'package:inv_mgt/screens/screen_login.dart';

import '../utils/colors.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  TextEditingController profnamectrl = TextEditingController();
  TextEditingController profemailctrl = TextEditingController();
  TextEditingController profcomnamectrl = TextEditingController();
  TextEditingController proflocctrl = TextEditingController();
  TextEditingController profmloinvctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        color: const Color.fromARGB(255, 236, 241, 244),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomHeader(isLogedin: true),
              const SizedBox(height: 20.0),
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
              Container(
                height: Height - 129,
                width: 700.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), color: clrwhite),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 10),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        children: const [
                          Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: clrdark),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 450,
                            width: 200,
                            child: Column(children: [
                              Container(
                                height: 200,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Image.asset('assets/images/man.png'),
                              ),
                              const SizedBox(height: 15.0),
                              CustomContBtn(
                                width: 200,
                                clr: clrprimary,
                                ontap: () {},
                                btnName: 'Change Photo',
                                clrbtntxtname: clrwhite,
                              ),
                              const SizedBox(height: 15.0),
                              CustomContBtn(
                                width: 200,
                                clr: clrwhite,
                                ontap: () {},
                                btnName: 'Remove Photo',
                                clrbtntxtname: clrprimary,
                              ),
                              const SizedBox(height: 100.0),
                              CustomContBtn(
                                width: 200,
                                clr: clrbtnred,
                                ontap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                    return const ScreenLogin();
                                  }));
                                },
                                btnName: 'Log Out',
                                clrbtntxtname: clrwhite,
                              )
                            ]),
                          ),
                          const SizedBox(width: 20.0),
                          SizedBox(
                            height: 500,
                            width: 430,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Name',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: clrdark),
                                  ),
                                  const SizedBox(height: 5.0),
                                  CustomTextField(
                                    controller: profnamectrl,
                                    hintTxt: 'John Peter',
                                    obscureTxt: false,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'E-mail',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: clrdark),
                                  ),
                                  const SizedBox(height: 5.0),
                                  CustomTextField(
                                    controller: profemailctrl,
                                    hintTxt: 'johnpeter123@gmail.com',
                                    obscureTxt: false,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'Company Name',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: clrdark),
                                  ),
                                  const SizedBox(height: 5.0),
                                  CustomTextField(
                                    controller: profcomnamectrl,
                                    hintTxt: 'Hema Medical Store',
                                    obscureTxt: false,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'Location',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: clrdark),
                                  ),
                                  const SizedBox(height: 5.0),
                                  CustomTextField(
                                    controller: proflocctrl,
                                    hintTxt: 'Delhi,NCR,India',
                                    obscureTxt: false,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'Max Limit of Inventory',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: clrdark),
                                  ),
                                  const SizedBox(height: 5.0),
                                  CustomTextField(
                                    controller: profmloinvctrl,
                                    hintTxt: 'John Peter',
                                    obscureTxt: false,
                                  ),
                                  const SizedBox(height: 40.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomContBtn(
                                        width: 200.0,
                                        clr: clrprimary,
                                        ontap: () {},
                                        btnName: "Save",
                                        clrbtntxtname: clrwhite,
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                      Container(
                        height: 3.0,
                        width: 680.0,
                        color: clrloginbg,
                      ),
                      const SizedBox(height: 40.0),
                      SizedBox(
                        height: 285.0,
                        width: 680,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Change Password",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: clrdark,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const Text(
                              'Old Password',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: clrdark),
                            ),
                            const SizedBox(height: 5.0),
                            CustomTextField(
                              controller: profnamectrl,
                              hintTxt: '********',
                              obscureTxt: true,
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'New Password',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: clrdark),
                            ),
                            const SizedBox(height: 5.0),
                            CustomTextField(
                              controller: profnamectrl,
                              hintTxt: '********',
                              obscureTxt: true,
                            ),
                            const SizedBox(height: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomContBtn(
                                  width: 200.0,
                                  clr: clrprimary,
                                  ontap: () {},
                                  btnName: "Save",
                                  clrbtntxtname: clrwhite,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
