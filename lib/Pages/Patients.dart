import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Patients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Text("Patients",
        //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 10,
        ),
        patientScrollList(),
        Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard(index),
                  );
                }))
      ],
    );
  }

  Card buildCard(int index) {
    return Card(
      color: Colors.white60,
      elevation: 20,
      child: ExpansionTile(
        subtitle: Text("Type",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "WinterYesterday")),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Age $index",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "WinterYesterday"),
            ),
            Text(
              "Stage $index",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "WinterYesterday"),
            )
          ],
        ),
        expandedAlignment: Alignment.center,
        maintainState: false,
        backgroundColor: Colors.white24,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: expansionChildContent(),
          )
        ],
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://loremflickr.com/480/240?dog=$index",
                    height: 100,
                    fit: BoxFit.fill)),
            SizedBox(
              height: 30,
            ),
            Text(
              "Name",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "WinterYesterday"),
            ),
          ],
        ),
      ),
    );
  }

  Column expansionChildContent() {
    return Column(
      children: [
        Text(loremIpsum(paragraphs: 1)),
        Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
                onPressed: () {
                  print("Call Pressed");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      Text(
                        "Call",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  height: 50,
                  width: 100,
                )),
            FlatButton(
                onPressed: () {
                  print("Donate Pressed");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.donut_large_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        "Donate",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  height: 50,
                  width: 100,
                )),
          ],
        )
      ],
    );
  }

  Container patientScrollList() {
    return Container(
      height: 200,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return horizontalPatientlist();
          }),
    );
  }

  Container horizontalPatientlist() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(5.0),
      height: 250,
      width: 300,
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage("images/homepage.jpeg"))),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white30),
              height: 50,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Text(
                          "Ram",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Lungs Cancer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
