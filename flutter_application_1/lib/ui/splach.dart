import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/login.dart';
import 'package:flutter_application_1/ui/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 196, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '/assets/ccc.jpg',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
