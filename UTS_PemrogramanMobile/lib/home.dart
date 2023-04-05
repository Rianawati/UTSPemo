// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:posttest5/eye.dart';
import 'package:posttest5/kulkas.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  get icon => null;

  get onPressed => null;

  get appBar => null;

  //assets

  Widget slide() {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        margin: EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icon/canon.jpg')),
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: Color.fromARGB(255, 40, 78, 155),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 45, 40, 40).withOpacity(0.5),
                spreadRadius: 5,
                offset: Offset(0, 3),
              )
            ]),
        child: const Text(
          'KAMERA',
          style: TextStyle(
              backgroundColor: Color.fromARGB(255, 106, 162, 221),
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget slide1() {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          margin: EdgeInsets.all(20),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icon/cosmos.jpg')),
              color: Color.fromARGB(255, 0, 0, 0),
              border: Border.all(
                color: Color.fromARGB(255, 60, 108, 142),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 129, 167, 250).withOpacity(0.7),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),
          child: const Text(
            'SETRIKA',
            style: TextStyle(
                backgroundColor: Color.fromARGB(255, 153, 221, 213),
                color: Color.fromARGB(255, 70, 69, 69),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget slide2() {
    return Center(
      child: Container(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          margin: EdgeInsets.all(20),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/icon/kulkas.jpg')),
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.7),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),
          child: const Text(
            'KULKAS',
            style: TextStyle(
                backgroundColor: Color.fromARGB(255, 153, 162, 221),
                color: Color.fromARGB(255, 70, 69, 69),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 242, 232, 255),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 138, 143, 191),
              title: const Text('CAHAYA ASIA ELEKTONIK\n'
                  'by : Rianawati (132)'),
              centerTitle: true,
              titleTextStyle:
                  const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            drawer: Drawer(
              backgroundColor: Color.fromARGB(255, 224, 225, 255),
              child: ListView(children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                    image: DecorationImage(
                        image: AssetImage("assets/image/logo.png")),
                    color: Color.fromARGB(255, 233, 224, 255),
                  ),
                  child: Text("Solusi Kebutuhan Rumah Tangga Anda",
                      style: TextStyle(
                        color: Color.fromARGB(255, 138, 149, 191),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                ListTile(
                  leading: Icon(Icons.face),
                  title: Text(
                    "Setrika",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  tileColor: Color.fromARGB(255, 138, 156, 191),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => face()));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.remove_red_eye),
                  title: Text(
                    "Kamera",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  tileColor: Color.fromARGB(255, 154, 177, 234),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => snackbar()));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text(
                    "Kulkas",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  tileColor: Color.fromARGB(255, 165, 204, 254),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                ),
              ]),
            ),
            body: Center(
              child: Container(
                color: Color.fromARGB(255, 255, 232, 241),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              slide(),
                              slide1(),
                              slide2(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
                width: 311,
                height: 71,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 311,
                          height: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(57),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 138, 145, 191),
                                blurRadius: 3.15,
                                offset: Offset(0, 1.85),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 138, 152, 191),
                                blurRadius: 6.52,
                                offset: Offset(0, 8.15),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 141, 138, 191),
                                blurRadius: 25.48,
                                offset: Offset(0, 38.52),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 138, 139, 191),
                                blurRadius: 46.85,
                                offset: Offset(0, 64.81),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 138, 146, 191),
                                blurRadius: 80,
                                offset: Offset(0, 100),
                              ),
                            ],
                            color: Color.fromARGB(255, 207, 217, 204),
                          ),
                          padding: const EdgeInsets.only(
                            left: 37,
                            right: 25,
                            top: 24,
                            bottom: 23,
                          ),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 249,
                                    height: 24,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(Icons.home),
                                        ),
                                        SizedBox(width: 51),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(Icons.search),
                                        ),
                                        SizedBox(width: 51),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(Icons.notifications),
                                        ),
                                        SizedBox(width: 51),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(Icons.person),
                                        ),
                                      ],
                                    )),
                              ]))
                    ]))));
  }
}
