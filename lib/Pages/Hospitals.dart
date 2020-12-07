import 'dart:ui';
import 'package:demoapp/Pages/Models/HospitalModel.dart';
import 'package:flutter/material.dart';
import 'Models/HospitalModel.dart';

class Hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemCount: hospitalList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: () {
                    print("Hospital Button $index");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          )
                        ]),
                    height: 290,
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                height: 290,
                                fit: BoxFit.fill,
                                alignment: Alignment.topCenter,
                                image: NetworkImage(
                                    hospitalList[index].hospitalImageURL))),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: CircleAvatar(
                              child: Text(
                                "#1",
                                style: TextStyle(color: Colors.black),
                              ),
                              radius: 25,
                              backgroundColor: Colors.lightBlueAccent,
                            )),
                        Text(hospitalList[index].hospitalName)
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
