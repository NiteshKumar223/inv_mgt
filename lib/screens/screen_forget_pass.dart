import 'package:flutter/material.dart';

import '../customui/custom_elevated_btn.dart';
import '../customui/custom_header.dart';
import '../customui/custom_textfield.dart';
import '../utils/colors.dart';

class ScreenForgetPass extends StatefulWidget {
  const ScreenForgetPass({super.key});

  @override
  State<ScreenForgetPass> createState() => _ScreenForgetPassState();
}

class _ScreenForgetPassState extends State<ScreenForgetPass> {
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
                ForgetPassLeftSide(),
                ForgetPassRightSide(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgetPassLeftSide extends StatelessWidget {
  const ForgetPassLeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    TextEditingController emailcontroller = TextEditingController();

    return Container(
      width: screensize.width / 2,
      color: clrlight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Forget Your Password ?",
            style: TextStyle(
                fontSize: 35.0, color: clrtxt, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30.0),
          const SizedBox(
            width: 370,
            child: Text(
              "Don't worry, we are here to help you out.Enter your Email Address below and we will mail you the instructions to reset your Password",
              style: TextStyle(
                fontSize: 15.0,
                color: clrtxt,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 370,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "E-mail",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5.0),
                  CustomTextField(
                    controller: emailcontroller,
                    hintTxt: "example@gmail.com",
                    obscureTxt: false,
                  ),
                  const SizedBox(height: 20.0),
                  CustomElevatedBtn(onpressed: () {}, btnName: "Send Email"),
                  const SizedBox(height: 20),
                  OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(370, 40),
                        side: const BorderSide(color: clrdark, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 16.0, color: clrdark),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ForgetPassRightSide extends StatelessWidget {
  const ForgetPassRightSide({super.key});

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
              const SizedBox(width: 25.0),
            ],
          ),
          SizedBox(height: screensize.width / 2 > 600 ? 120 : 190),
          Image.asset(
            'assets/images/login2.png',
            height: screensize.width / 2 > 600 ? 450 : 250,
          )
        ],
      ),
    );
  }
}
