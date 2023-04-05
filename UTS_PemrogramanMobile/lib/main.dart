import 'package:flutter/material.dart';
import 'package:posttest5/eye.dart';
import 'package:posttest5/splashscreen.dart';
import 'package:posttest5/welcome.dart';
import 'package:posttest5/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
    );
  }
}
