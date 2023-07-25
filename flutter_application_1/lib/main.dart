import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/create_screen.dart';
import 'package:flutter_application_1/ui/home.dart';
import 'package:flutter_application_1/ui/hubungi.dart';

import 'package:flutter_application_1/ui/daftar.dart';
import 'package:flutter_application_1/ui/login.dart';

import 'package:flutter_application_1/ui/splach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "catat cuan",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      //MyHomePage()
      // HubungiPage(),
      //SignupPage(),
      //LoginPage(),
      //CreateScreen()
    );
  }
}
