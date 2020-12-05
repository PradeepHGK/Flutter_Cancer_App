import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView(
          shrinkWrap: false,
          dragStartBehavior: DragStartBehavior.start,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: new Image.asset(
                  "images/homepage.jpeg",
                  fit: BoxFit.fill,
                ),
                height: 200),
            buildPadding(context),
            buildPadding(context),
            buildPadding(context),
            buildPadding(context),
            buildPadding(context),
            buildPadding(context),
            buildPadding(context),
          ],
        ),
      )
    ]);
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      child: FlatButton(
        highlightColor: Colors.green,
        onPressed: () {
          print("Context");
        },
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Project",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Project",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decorationStyle: TextDecorationStyle.solid,
                              letterSpacing: 2,
                              fontSize: 20),
                        ),
                        Container(
                          child: Center(
                            child: Text("Price: 100"),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset.fromDirection(10, 2.0))
                              ]),
                          height: 50,
                          width: 100,
                        )
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple),
              height: 150,
              width: 1000,
            ),
          ],
        ),
      ),
    );
  }
}
