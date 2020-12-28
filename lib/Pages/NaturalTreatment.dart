import 'dart:convert';

import 'package:demoapp/Pages/Models/NaturalTreatmentInfo.dart';
import 'package:demoapp/Pages/PatientInfoPage.dart';
import 'package:flutter/material.dart';

class NaturalTreatment extends StatelessWidget {
  final _buttonColors = [
    Colors.redAccent,
    Colors.lightGreen[200],
    Colors.lightBlueAccent,
    Colors.blueGrey,
    Colors.black87
  ];

  var parseJSON = JsonDecoder();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              child: FlatButton(
                highlightColor: Colors.cyanAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientInfoPage(index)));
                  print("Hello -- $index");
                },
                child: Card(
                  shadowColor: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                        color: _buttonColors[index],
                        borderRadius: BorderRadius.circular(5)),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(naturalRemedyList[index].hospitalName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("Age: ${naturalRemedyList[index].age}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Price",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text("Age: 200",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
