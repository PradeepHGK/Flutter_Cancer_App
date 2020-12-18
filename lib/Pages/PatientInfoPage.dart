import 'package:demoapp/Pages/NaturalTreatment.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class PatientInfoPage extends StatelessWidget {
  int patientID;

  PatientInfoPage(this.patientID);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.info_outline_rounded), onPressed: null)
          ],
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Patient",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Info",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              })),
      body: Container(
        child: Center(
            child: Text(
          "Patient Info Page $patientID",
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 10,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
