import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:posttest5/landing.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 238, 224),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 12,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 500.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Color.fromARGB(255, 129, 123, 185)
                                    .withOpacity(0.20),
                                BlendMode.dstATop),
                            image: AssetImage("assets/image/comb.jpg")),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(68.0),
                      child: Image.asset(
                        "assets/image/logo.png",
                        scale: 1.1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 207, 217, 204),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Welcome to Cahaya Asia Elektronik",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 138, 171, 191))),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Rekomendasi Spesial Untukmu",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: (() {
                            Navigator.push(context, MaterialPageRoute(
                              //responsive & adaptive
                              builder: (_) {
                                return landing();
                              },
                            ));
                          }),
                          child: Text(
                            "continue",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 158, 138, 191),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
