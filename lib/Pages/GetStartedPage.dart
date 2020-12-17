import 'package:demoapp/Pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Image.asset(
            "images/ProfileImages/CancerIcon.png",
            alignment: Alignment.topCenter,
            height: 250,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                letterSpacing: 15,
                color: Colors.black,
                fontSize: 30,
                fontStyle: FontStyle.normal,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.none),
          ),
          Text(
            loremIpsum(words: 20),
            style: TextStyle(
                decoration: TextDecoration.none,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                decorationStyle: TextDecorationStyle.solid,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 90,
          ),
          FlatButton(
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Center(
                  child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontStyle: FontStyle.normal,
                  decorationStyle: TextDecorationStyle.solid,
                  decoration: TextDecoration.none,
                ),
              )),
              height: 80,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.greenAccent[200],
                      Colors.green[400],
                      Colors.green[900]
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
