import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:posttest5/logins.dart';
import 'package:posttest5/signup.dart';

class landing extends StatelessWidget {
  const landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 138, 155, 191),
          leading: Icon(Icons.search),
          title: Text('WELCOME TO CAHAYA ASIA ELEKTRONIK'),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Center(
            child: Container(
          color: Color.fromARGB(255, 224, 244, 255),
          width: 800,
          height: 800,
          child: Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      image: DecorationImage(
                        image: AssetImage("assets/image/logo.png"),
                      )),
                ),
              ),
              Text(
                "Already have account ?",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return logins();
                        }));
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 154, 158, 234)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "dont have account ?",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return signup();
                        }));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 154, 158, 234)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
