import 'package:flutter/material.dart';

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
        patientScrollList()
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
          }),
    );
  }
}
