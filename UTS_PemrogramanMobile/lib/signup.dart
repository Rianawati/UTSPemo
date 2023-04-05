// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:posttest5/home.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

enum Gender { unknown, man, woman }

class _signupState extends State<signup> {
  Gender? gender = Gender.unknown;
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

  String getGender(Gender? value) {
    if (value == Gender.man) {
      return "MAN";
    } else if (value == Gender.woman) {
      return "WOMAN";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 138, 146, 191),
            leading: Icon(Icons.search),
            title: Text('Welcome to Cahaya Asia Elektronik'),
            centerTitle: true,
            titleTextStyle:
                TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          body: Center(
            child: Container(
              color: Color.fromARGB(255, 151, 154, 242),
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      " Username :  $namadepan $namabelakang \n Email : $email "),
                  Text(" Gender :${getGender(gender)}"),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: ctrlnamadepan,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 156, 110, 247)),
                      ),
                      labelText: 'First Name',
                      hintText: 'First Name',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: ctrlnamabelakang,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 183, 221, 246)),
                      ),
                      labelText: "Last Name",
                      hintText: "Last Name",
                      icon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: ctrlemail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      labelText: "E-mail",
                      hintText: "E-mail",
                      icon: Icon(Icons.mail),
                    ),
                  ),
                  ListTile(
                      title: Text("Woman"),
                      leading: Radio(
                          groupValue: gender,
                          value: Gender.woman,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value;
                            });
                          })),
                  ListTile(
                      title: Text("Man"),
                      leading: Radio(
                          groupValue: gender,
                          value: Gender.man,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value;
                            });
                          })),
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
                      primary: Color.fromARGB(255, 178, 229, 255),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Home();
                          }));
                        }),
                        child: Text(
                          "Regist",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 154, 179, 234),
                        ),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
