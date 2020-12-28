import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:demoapp/Pages/Hospital_Details.dart';
import 'package:demoapp/Pages/Models/HospitalModel.dart';
import 'package:flutter/material.dart';
import 'Models/HospitalModel.dart';

class Hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: hospitalList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  print("Hospital Button $index");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Hospital_Details()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 0.3), //(x,y)
                          blurRadius: 6.0,
                        )
                      ]),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        placeholderFadeInDuration: Duration(milliseconds: 200),
                        fit: BoxFit.fitHeight,
                        height: 290,
                        imageUrl: hospitalList[index].hospitalImageURL,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        // placeholder: (context, url) =>
                        //     Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                      // ClipRRect(
                      //     borderRadius: BorderRadius.circular(20),
                      //     child: Image(
                      //       height: 290,
                      //       fit: BoxFit.fill,
                      //       alignment: Alignment.topCenter,
                      //       image: NetworkImage(
                      //           hospitalList[index].hospitalImageURL),
                      //       loadingBuilder: (context, Widget child,
                      //           ImageChunkEvent loadingprogress) {
                      //         if (loadingprogress == null) return child;
                      //         return Center(child: CircularProgressIndicator());
                      //       },
                      //     )
                      //     ),
                      Positioned(
                          left: 20,
                          bottom: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                child: Row(
                                  children: [
                                    Text(
                                      "#1",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                radius: 25,
                                backgroundColor: Colors.lightBlueAccent,
                              ),
                              Text(
                                hospitalList[index].hospitalName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
