import 'package:flutter/material.dart';
import 'package:posttest5/landing.dart';

class snackbar extends StatelessWidget {
  const snackbar({Key? key}) : super(key: key);

  static final Snackbar = SnackBar(
    content: Text(
      "Welcome",
    ),
    duration: Duration(seconds: 5),
    backgroundColor: Color.fromARGB(255, 255, 238, 224),
  );

  Widget slide() {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        margin: EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icon/kulkas.jpg')),
            color: Color.fromARGB(255, 255, 230, 230),
            border: Border.all(
              color: Color.fromARGB(255, 165, 175, 254),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 170, 165, 254).withOpacity(0.5),
                spreadRadius: 5,
                offset: Offset(0, 3),
              )
            ]),
        child: const Text(
          'kulkas',
          style: TextStyle(
              backgroundColor: Color.fromARGB(255, 127, 106, 221),
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
              color: Color.fromARGB(255, 225, 225, 255),
              border: Border.all(
                color: Color.fromARGB(255, 156, 106, 221),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 110, 106, 221).withOpacity(0.7),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),
          child: const Text(
            'Setrika',
            style: TextStyle(
                backgroundColor: Color.fromARGB(255, 153, 160, 221),
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
                  DecorationImage(image: AssetImage('assets/icon/canon.jpg')),
              color: Color.fromARGB(255, 255, 227, 227),
              border: Border.all(
                color: Color.fromARGB(255, 106, 106, 221),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 106, 125, 221).withOpacity(0.7),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                )
              ]),
          child: const Text(
            'kamera',
            style: TextStyle(
                backgroundColor: Color.fromARGB(255, 153, 161, 221),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 138, 191, 190),
        title: const Text('MAKEUP SHOP OYIPIY\n'
            'by : Olivia Oktavi (102)'),
        centerTitle: true,
        titleTextStyle:
            const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 242, 232, 255),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  final mySnackbar = SnackBar(
                    content: Text("All Stock is ready"),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10),
                    backgroundColor: Color.fromARGB(255, 140, 138, 191),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackbar);
                },
                child: Text("View stock"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 178, 186, 255),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
