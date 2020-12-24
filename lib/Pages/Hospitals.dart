import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
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
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        )
                      ]),
                  height: 290,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: hospitalList[index].hospitalImageURL,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                Center(
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
                          child: CircleAvatar(
                            child: Text(
                              "#1",
                              style: TextStyle(color: Colors.black),
                            ),
                            radius: 25,
                            backgroundColor: Colors.lightBlueAccent,
                          )),
                      Text(hospitalList[index].hospitalName)
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
