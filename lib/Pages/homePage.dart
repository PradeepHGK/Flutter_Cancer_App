import 'dart:ui';
import 'package:demoapp/Pages/FAQ.dart';
import 'package:demoapp/Pages/Hospital/Hospitals.dart';
import 'package:demoapp/Pages/Models/TabList.dart';
import 'package:demoapp/Pages/NaturalTreatment/NaturalTreatment.dart';
import 'package:demoapp/Pages/Patients/Patients.dart';
import 'package:demoapp/Pages/Profile/userdetails.dart';
import 'package:demoapp/Pages/myaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tarbarController;

  var currentButtomIndex = 0;
  var currentTabIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabIntialization();
  }

  void tabIntialization() {
    currentTabIndex = 0;
    _tarbarController =
        TabController(length: listTabs.length, vsync: this, initialIndex: 0);
    _tarbarController.addListener(() {
      currentTabIndex = _tarbarController.index;
      print("TabClicked: $currentTabIndex");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: listTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                onTap: (value) {
                  print("TabValue: $value");
                },
                controller: _tarbarController,
                indicatorColor: Colors.black,
                physics: BouncingScrollPhysics(),
                isScrollable: true,
                tabs: listTabs.toList(growable: true)),
            title: Text(
              "Support Cancer",
              style: TextStyle(
                  letterSpacing: 3,
                  fontFamily: "WinterYesterday",
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 10,
                width: 10,
                child: GestureDetector(
                  onTap: () {
                    showAboutDialog(
                      children: [
                        Text('This is an About Dialog in Flutter'),
                      ],
                      context: context,
                      applicationIcon: FlutterLogo(),
                      applicationName: "Support Cancer",
                      applicationVersion: "0.1",
                      useRootNavigator: true,
                    );
                  },
                  child: Image(
                    image: AssetImage("images/icons/SupportIcon.png"),
                    isAntiAlias: true,
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserDetails()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/icons/doctor.png"),
                  ),
                ),
              )
            ],
          backgroundColor: Colors.tealAccent[600],
            elevation: 0,
          ),
          body: TabBarView(
            controller: _tarbarController,
            children: [
              Patients(),
              NaturalTreatment(),
              Hospitals(),
              FAQScreen()
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //     currentIndex: currentButtomIndex,
          //     type: BottomNavigationBarType.fixed,
          //     backgroundColor: Colors.yellow[100],
          //     onTap: (indexValue) {
          //       setState(() {
          //         currentButtomIndex = indexValue;
          //       });
          //       print(indexValue);
          //     },
          //     items: [
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.headset_rounded), label: "HeadSet"),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.mediation_rounded), label: "Meditation"),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.youtube_searched_for_rounded),
          //           label: "YT Search"),
          //     ]),
        ),
      ),
    );
  }
}
