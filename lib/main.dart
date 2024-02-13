import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/screens/screen_login.dart';

void main() {
  runApp(const MyApp());

  doWhenWindowReady(() {
    const initialSize = Size(1000, 800);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicotary',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ScreenLogin(),
    );
  }
}

