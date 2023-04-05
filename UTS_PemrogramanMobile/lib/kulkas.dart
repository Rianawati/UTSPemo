import 'package:flutter/material.dart';
import 'package:posttest5/home.dart';

class face extends StatelessWidget {
  const face({Key? key}) : super(key: key);

  Future<dynamic> CustomAlert(BuildContext context, String pesan) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            Column(
              children: [
                Text(
                  pesan,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Sorry stock not already, sorry :(",
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Done",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 61, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 247, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 138, 154, 191),
        leading: Icon(Icons.search),
        title: Text('Welcome to Cahaya Asia Elektronik'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  CustomAlert(context, "View Stock");
                },
                child: Text("View Stock"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 178, 183, 255),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Home();
                  }));
                }),
                child: Text(
                  "Back To Menu",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 190, 138, 191),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
