import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_elevated_btn.dart';
import 'package:inv_mgt/customui/custom_g_btn.dart';
import 'package:inv_mgt/customui/custom_header.dart';
import 'package:inv_mgt/screens/screen_login.dart';
import 'package:inv_mgt/utils/colors.dart';

import '../customui/custom_textfield.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screensize.height,
        width: screensize.width,
        color: clrlight,
        child: Column(
          children: [
            const CustomHeader(isLogedin: false),
            Expanded(
              child: Row(children: const [
                RegisterLeftSide(),
                RegisterRightSide(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// register left side
class RegisterLeftSide extends StatelessWidget {
  const RegisterLeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Container(
      height: screensize.height,
      width: screensize.width / 2,
      color: clrloginbg,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 25.0),
              Image.asset(
                'assets/images/logo.png',
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 5.0),
              const Text(
                "Medicotary",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.width / 2 > 600 ? 120 : 160),
          Image.asset(
            'assets/images/sigup.png',
            height: screensize.width / 2 > 600 ? 450 : 280,
          )
        ],
      ),
    );
  }
}

// register right side
class RegisterRightSide extends StatefulWidget {
  const RegisterRightSide({super.key});

  @override
  State<RegisterRightSide> createState() => _RegisterRightSideState();
}

class _RegisterRightSideState extends State<RegisterRightSide> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();
    TextEditingController companycontroller = TextEditingController();
    TextEditingController bloccontroller = TextEditingController();

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

    return Container(
      height: screensize.height,
      width: screensize.width / 2,
      color: clrwhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30.0,
              color: clrdark,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 370,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25.0),
                    const Text(
                      "E-mail",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    // const SizedBox(height: 5.0),
                    CustomTextField(
                      controller: emailcontroller,
                      hintTxt: "example@gmail.com", 
                      obscureTxt: false,
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    // const SizedBox(height: 5.0),
                    CustomTextField(
                      controller: passcontroller,
                      hintTxt: "********",
                      obscureTxt: true,
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Company Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    // const SizedBox(height: 5.0),
                    CustomTextField(
                      controller: companycontroller,
                      hintTxt: "Hema Medical Store",
                      obscureTxt: false,
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Business Location",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    // const SizedBox(height: 5.0),
                    CustomTextField(
                      controller: bloccontroller,
                      hintTxt: "Delhi,NCR,India",
                      obscureTxt: false,
                    ),
                    const SizedBox(height: 20.0),
                    Wrap(
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
                        const Text("By signing up you agree to our "),
                        InkWell(
                          onTap: () {
                            debugPrint("Privacy Policy clicked");
                          },
                          child: const Text(
                            "Privacy Policy ",
                            style: TextStyle(color: clrlink),
                          ),
                        ),
                        const Text("and "),
                        InkWell(
                          onTap: () {
                            debugPrint("T&C clicked");
                          },
                          child: const Text(
                            "T&C",
                            style: TextStyle(color: clrlink),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedBtn(
                      btnName: "Register",
                      onpressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ScreenLogin();
                        }));
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomGBtn(
                      ontap: () {},
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Text("Already a member ? "),
                        InkWell(
                          onTap: () {
                            debugPrint("Log in clicked");
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                                color: clrlink, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
