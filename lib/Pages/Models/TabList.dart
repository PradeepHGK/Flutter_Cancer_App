import 'package:flutter/material.dart';

List<Widget> listTabs = [
  Tab(
    // icon: ImageIcon(
    //   AssetImage("images/icons/patient.png"),
    //   color: Colors.white,
    // ),
    text: "Patients",
  ),
  Tab(
    // icon: ImageIcon(AssetImage("images/icons/naturalmedicine.png")),
    text: "Natural Treatment",
  ),
  Tab(
    // icon: ImageIcon(AssetImage("images/icons/doctor.png")),
    //text: "Hospitals",
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.local_hospital,
          size: 20,
          color: Colors.blue,
        ),
        Text("Hospitals")
      ],
    ),
  ),
  Tab(
    // icon: ImageIcon(AssetImage("images/icons/faq.png")),
    //text: "FAQ",
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.question_answer,
          size: 20,
          color: Colors.blue,
        ),
        Text("FAQ")
      ],
    ),
  )
];
