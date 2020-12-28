import 'package:demoapp/Pages/Hospitals.dart';
import 'package:demoapp/Pages/homePage.dart';
import 'package:flutter/material.dart';

class Hospital_Details extends StatefulWidget {
  @override
  _Hospital_DetailsState createState() => _Hospital_DetailsState();
}

class _Hospital_DetailsState extends State<Hospital_Details> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Expanded(
          child: Container(
            child: Stack(children: [
              Expanded(
                child: Stack(children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("images/homepage.jpeg"),
                      )),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[300],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          height: 500,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Heading",
                                ),
                                Text("Subtitle"),
                                Text(
                                  "Heading",
                                ),
                                Text("Subtitle"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            height: MediaQuery.of(context).size.height / 2 - 50,
                            width: MediaQuery.of(context).size.width,
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
