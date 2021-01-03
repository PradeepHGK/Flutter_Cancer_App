import 'dart:convert';

import 'package:demoapp/Pages/Models/NaturalTreatmentInfo.dart';
import 'package:demoapp/Pages/NaturalTreatment/NatTreatHostpital.dart';
import 'package:demoapp/Pages/Patients/PatientInfoPage.dart';
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NatTreatHostpital()));
                },
                child: Card(
                  shadowColor: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                        color: _buttonColors[index],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.blueAccent, Colors.greenAccent]),
                        borderRadius: BorderRadius.circular(5)),
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                          ),
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
                    ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
