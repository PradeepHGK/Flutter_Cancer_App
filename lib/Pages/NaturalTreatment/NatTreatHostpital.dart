import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class NatTreatHostpital extends StatefulWidget {
  @override
  _NatTreatHostpitalState createState() => _NatTreatHostpitalState();
}

//Name, Address, Location, Image, Comments
class _NatTreatHostpitalState extends State<NatTreatHostpital> {
  bool isDarkModeEnabled;
  bool saveDarkState;

  @override
  void initState() {
    // TODO: implement initState
    print("SaveDarkState $saveDarkState");
    isDarkModeEnabled = saveDarkState != null ? saveDarkState : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInSine,
          decoration: BoxDecoration(
              color: isDarkModeEnabled ? HexColor("#222831") : Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: isDarkModeEnabled ? Colors.white : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          print(isDarkModeEnabled);
                          saveDarkState = isDarkModeEnabled;
                        });
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.lightbulb_outline_rounded,
                        color: isDarkModeEnabled ? Colors.white : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isDarkModeEnabled = !isDarkModeEnabled;
                        });
                      })
                ],
              ),
              Expanded(
                child: AnimatedContainer(
                  curve: Curves.easeInSine,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: isDarkModeEnabled ? HexColor("#222831") : Colors.white,
                  duration: Duration(milliseconds: 500),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            loremIpsum(words: 2),
                            textAlign: TextAlign.left,
                            style: GoogleFonts.allura(
                                fontWeight: FontWeight.bold,
                                color: isDarkModeEnabled
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(loremIpsum(paragraphs: 2),
                            style: GoogleFonts.actor(
                              fontSize: 15,
                              color: isDarkModeEnabled
                                  ? Colors.white
                                  : Colors.black,
                              // color: Color(222831)
                            )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor("374045"),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    child: Image.asset("images/homepage.jpeg"),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
