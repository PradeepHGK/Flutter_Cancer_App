import 'package:flutter/material.dart';

List<Widget> listTabs = [
  Tab(
    // icon: ImageIcon(
    //   AssetImage("images/icons/patient.png"),
    //   color: Colors.white,
    // ),
    //text: "Patients",
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.sick,
          size: 20,
          color: Colors.blue,
        ),
        SizedBox(
          width: 5,
        ),
        Text("Patients")
      ],
    ),
  ),
  Tab(
    // icon: ImageIcon(AssetImage("images/icons/naturalmedicine.png")),
    //text: "Natural Treatment",
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.nature,
          size: 20,
          color: Colors.blue,
        ),
         SizedBox(
          width: 5,
        ),
        Text("Natural Treatment")
      ],
    ),
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
         SizedBox(
          width: 5,
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
         SizedBox(
          width: 5,
        ),
        Text("FAQ")
      ],
    ),
  )
];
