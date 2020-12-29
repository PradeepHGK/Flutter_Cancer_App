import 'package:demoapp/Pages/Hospital/Hospitals.dart';
import 'package:demoapp/Pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Hospital_Details extends StatefulWidget {
  @override
  _Hospital_DetailsState createState() => _Hospital_DetailsState();
}

class _Hospital_DetailsState extends State<Hospital_Details> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          child: Stack(children: [
            Stack(children: [
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  loremIpsum(words: 3),
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Transform.rotate(
                                          angle: 45,
                                          child: IconButton(
                                              tooltip: "LocationButton",
                                              icon: Icon(
                                                Icons.navigation_rounded,
                                                color: Colors.blue,
                                              ),
                                              onPressed: () {
                                                print("NavigationButton");
                                              }),
                                        ))
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "City",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              loremIpsum(words: 10),
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Contact Details: 99073 - 87267",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
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
                        height: MediaQuery.of(context).size.height / 2 - 80,
                        width: MediaQuery.of(context).size.width,
                      ),
                    )
                  ],
                ),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
