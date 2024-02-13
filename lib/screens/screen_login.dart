import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/custom_g_btn.dart';
import 'package:inv_mgt/customui/custom_header.dart';
import 'package:inv_mgt/customui/custom_textfield.dart';
import 'package:inv_mgt/customui/custom_elevated_btn.dart';
import 'package:inv_mgt/screens/screen_forget_pass.dart';
import 'package:inv_mgt/screens/screen_home.dart';
import 'package:inv_mgt/screens/screen_register.dart';
import 'package:inv_mgt/utils/colors.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomHeader(isLogedin: false),
          Expanded(
            child: Row(children: [
              LoginLeftSide(),
             
              const LoginRightSide(),
            ]),
          ),
        ],
      ),
    );
  }
}

// login left side

class LoginLeftSide extends StatelessWidget {
  LoginLeftSide({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width / 2,
      color: clrlight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome Back !",
            style: TextStyle(
                fontSize: 35.0, color: clrtxt, fontWeight: FontWeight.bold),
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
                  const SizedBox(height: 10.0),
                  const Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5.0),
                  CustomTextField(
                    controller: passcontroller,
                    hintTxt: "********",
                    obscureTxt: true,
                  ),
                  const SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const ScreenForgetPass();
                        })
                      );
                    },
                    child: const Text(
                      "Forget Password ?",
                      style: TextStyle(
                        color: clrlink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  CustomElevatedBtn(
                    onpressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const ScreenHome();
                        })
                      );
                    }, 
                    btnName: "Login",
                    ),
                  const SizedBox(height: 15.0),
                  CustomGBtn(ontap: () {

                  }),
                  const SizedBox(height: 25.0),
                  Row(
                    children: [
                      const Text("New Here ?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ScreenRegister();
                          }));
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(color: clrlink),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// login right side

class LoginRightSide extends StatelessWidget {
  const LoginRightSide({super.key});

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
