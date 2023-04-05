// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:posttest5/home.dart';

class logins extends StatefulWidget {
  const logins({Key? key}) : super(key: key);

  @override
  State<logins> createState() => _loginsState();
}

class _loginsState extends State<logins> {
  String namadepan = '', namabelakang = '', email = '';
  final ctrlnamadepan = TextEditingController();
  final ctrlnamabelakang = TextEditingController();
  final ctrlemail = TextEditingController();

  @override
  void dispose() {
    ctrlnamadepan.dispose();
    ctrlnamabelakang.dispose();
    ctrlemail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 190, 138, 191),
          leading: Icon(Icons.search),
          title: Text('Welcome to Cahaya Asia Elektronik'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 255, 238, 224),
            padding: EdgeInsets.all(20.0),
            child: ListView(children: [
              SizedBox(
                height: 30,
              ),
              Text(" Username : $namadepan $namabelakang \n Email : $email "),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: ctrlnamadepan,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: 'First Name',
                  hintText: 'First Name',
                  icon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: ctrlnamabelakang,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "Last Name",
                  hintText: "Last Name",
                  icon: Icon(Icons.person_outline),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: ctrlemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  labelText: "E-mail",
                  hintText: "E-mail",
                  icon: Icon(Icons.mail),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namadepan = ctrlnamadepan.text;
                    namabelakang = ctrlnamabelakang.text;
                    email = ctrlemail.text;
                  });
                },
                child: const Text('Tampilkan'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 178, 213, 255),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (() {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Home();
                      }));
                    }),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 154, 187, 234),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
