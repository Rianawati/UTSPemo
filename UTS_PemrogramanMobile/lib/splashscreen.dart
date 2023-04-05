import 'dart:html';

import 'package:flutter/material.dart';
import 'package:posttest5/home.dart';
import 'package:posttest5/eye.dart';
import 'package:posttest5/landing.dart';
import 'dart:async';

import 'package:posttest5/welcome.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 254, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              // width: 100,
              color: Color.fromARGB(255, 224, 229, 255),
              child: new Image.asset("assets/image/logo.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
