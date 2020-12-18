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
