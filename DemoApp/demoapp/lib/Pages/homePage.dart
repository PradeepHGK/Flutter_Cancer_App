import 'dart:ui';
import 'package:demoapp/Pages/Models/TabList.dart';
import 'package:demoapp/Pages/Patients.dart';
import 'package:demoapp/Pages/Products.dart';
import 'package:demoapp/Pages/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentButtomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            indicatorColor: Colors.black,
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            tabs: listTabs.toList(growable: true)),
        title: Center(
          child: Text(
            "Support Cancer",
            style: TextStyle(letterSpacing: 7),
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: null)
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: TabBarView(
        children: [
          Patients(),
          Products(),
          Products(),
          ProfilePage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentButtomIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.yellow[100],
          onTap: (indexValue) {
            setState(() {
              currentButtomIndex = indexValue;
            });
            print(indexValue);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.headset_rounded), label: "HeadSet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mediation_rounded), label: "Meditation"),
            BottomNavigationBarItem(
                icon: Icon(Icons.youtube_searched_for_rounded),
                label: "YT Search"),
          ]),
    );
  }
}
