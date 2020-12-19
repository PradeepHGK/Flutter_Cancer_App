import 'package:demoapp/Pages/NaturalTreatment.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class PatientInfoPage extends StatelessWidget {
  int patientID;

  var child;

  PatientInfoPage(this.patientID);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 80,
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(Icons.info_outline_rounded), onPressed: null)
            ],
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Patient",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Info",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                })),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Container(
                child: ClipRRect(
                    child: Image(image: AssetImage("images/homepage.jpeg"))),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            toggleMethod(context),
            Container(
              child: Center(
                  child: Text(
                "Patient Info Page $patientID",
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10)),
                      child: Card(
                        child: ListTile(
                          leading: FlutterLogo(),
                          title: Text("Hello"),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Padding toggleMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: SafeArea(
          child: LimitedBox(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        print("InfoButton");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 150,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Center(
                          child: Text(
                            "Information",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        print("Comments");
                      },
                      child: Container(
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Center(
                          child: Text(
                            "Live Comments",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
