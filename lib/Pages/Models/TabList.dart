import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> listTabs = [
  Tab(
    icon: ImageIcon(
      AssetImage("images/icons/patient.png"),
      color: Colors.white,
    ),
    text: "Patients",
  ),
  Tab(
    icon: ImageIcon(AssetImage("images/icons/naturalmedicine.png")),
    text: "Natural Treatment",
  ),
  Tab(
    icon: ImageIcon(AssetImage("images/icons/doctor.png")),
    text: "Hospitals",
  ),
  Tab(
    icon: ImageIcon(AssetImage("images/icons/faq.png")),
    text: "FAQ",
  )
];
