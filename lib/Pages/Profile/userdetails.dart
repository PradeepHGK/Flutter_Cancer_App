import 'dart:io';

import 'package:demoapp/Pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  var fontFamily = "Dinoko";
  PickedFile _pickedFile;
  ImagePicker _imagePicker = new ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  height: MediaQuery.of(context).size.height / 4 - 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                loremIpsum(words: 2),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                loremIpsum(words: 1),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              print("UserIcon");
                              ShowModelBottomSheet(context);
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("images/icons/doctor.png"),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildBasicDetails(context),
                    buildUploadDocument(context),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.yellow,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width,
                            ),
                          )),
                        ),
                      ),
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  void ShowModelBottomSheet(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 900,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
          );
        });
  }

  Padding buildUploadDocument(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            getImage(ImageSource.gallery);
          });
        },
        child: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.upload_file,
                  color: Colors.green[400],
                  size: 50,
                ),
                Text(
                  "Upload diagnosed\nmedical file",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                // Image.asset(_imagePicker == null
                //     ? "images/homepage.jpeg"
                //     : _pickedFile.path)
              ],
            ),
          ),
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: _pickedFile == null
                    ? AssetImage("images/homepage.jpeg")
                    : FileImage(File(_pickedFile.path)),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black26, spreadRadius: 1.1)],
              color: Colors.white,
              shape: BoxShape.rectangle),
        ),
      ),
    );
  }

  // Future filepicker() async {
  //   FilePickerResult result = await FilePicker.platform.pickFiles();

  //   if (result != null) {
  //     File file = File(result.files.single.path);
  //     var name = file.path.split("/").last;
  //     print("FileName: $name");
  //   } else {
  //     // User canceled the picker
  //     print("UserCanceled");
  //   }
  // }

  void getImage(ImageSource source) async {
    final _picker = await _imagePicker.getImage(
      source: source,
    );

    setState(() {
      _pickedFile = _picker;
    });
  }

  Padding buildBasicDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [addAge(context), addStage(context)],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [addType(context), addDiagnosedDate(context)],
          )
        ],
      ),
    );
  }

  Container addDiagnosedDate(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
            ),
            BoxShadow(
              color: Colors.black12,
            )
          ]),
      height: 100,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Diagnosed Date",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.date_range,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }

  Container addType(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
            ),
            BoxShadow(
              color: Colors.black12,
            )
          ]),
      height: 100,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Type",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.merge_type)
          ],
        ),
      ),
    );
  }

  Container addStage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
            ),
            BoxShadow(
              color: Colors.black12,
            )
          ]),
      height: 100,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Stage",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.military_tech)
          ],
        ),
      ),
    );
  }

  Container addAge(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
            ),
            BoxShadow(
              color: Colors.black12,
            )
          ]),
      height: 100,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.agriculture)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "24",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " years old",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildGridBuilder(BuildContext context) {
    return Container(
        height: 400,
        color: Colors.blue[500],
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blueAccent,
                  height: 400,
                  width: 200,
                ),
              );
            }));
  }
}
