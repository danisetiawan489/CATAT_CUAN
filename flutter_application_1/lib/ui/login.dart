import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/splach.dart';
import 'package:flutter_application_1/ui/daftar.dart';
import 'package:flutter_application_1/ui/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  int index = 1; // Tambahkan deklarasi dan nilai untuk variabel index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/ccc.jpg', height: 200.0),
              SizedBox(height: 16),
              
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (index == 1) {
                    // "Detail" item is at index 1
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 23, 137, 243), 
                ),
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: Color.fromRGBO(248, 252, 255, 1), 
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
