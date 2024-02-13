
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/screens/screen_notification.dart';
import 'package:inv_mgt/screens/screen_profile.dart';

import '../utils/colors.dart';

class CustomHeader extends StatelessWidget {
  final bool isLogedin;
  const CustomHeader({super.key, required this.isLogedin});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            color: clrprimary,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                'assets/images/logo.png',
                height: 30,
                width: 30,
            ),
              ),
            const Text(
              "Medicotary",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: clrlight
              ),
            ),
              SafeArea(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width-680,
                  height: 50,
                  child: MoveWindow(),
                ),
              ),
              if(isLogedin==true) SafeArea(
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: const BoxDecoration(
                    // color: clrsubtlebg,
                    border: Border.symmetric(
                      vertical: BorderSide(color: clrlink,width: 1)
                    )
                  ),
                  
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Hema Medical Store",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: clrlight,
                        ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return const ScreenNotification();
                            })
                          );
                        },
                        icon: const Icon(Icons.notification_important_sharp,color: clrwhite)
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return const ScreenProfile();
                            })
                          );
                          },
                          child: CircleAvatar(
                            child: Image.asset(
                              'assets/images/man.png',
                              height: 30,
                              width: 30,
                              ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
              else SizedBox(
                width: 350,
                child: MoveWindow(),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: MinimizeWindowButton(
                  colors: WindowButtonColors(
                      normal: clrprimary,
                      iconNormal: clrwhite,
                      mouseOver: clrwhite,
                      mouseDown: clrprimary,
                      iconMouseOver: clrprimary,
                      iconMouseDown: clrwhite),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: MaximizeWindowButton(
                  colors: WindowButtonColors(
                      normal: clrprimary,
                      iconNormal: clrwhite,
                      mouseOver: clrwhite,
                      mouseDown: clrprimary,
                      iconMouseOver: clrprimary,
                      iconMouseDown: clrwhite),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: CloseWindowButton(
                  colors: WindowButtonColors(
                      normal: clrprimary,
                      iconNormal: clrwhite,
                      mouseOver: Colors.red,
                      mouseDown: clrprimary,
                      iconMouseOver: clrprimary,
                      iconMouseDown: clrwhite),
                ),
              )
            ]),
          );
  }
}