import 'package:flutter/material.dart';

class NaturalTreatment extends StatelessWidget {
  final _buttonColors = [
    Colors.redAccent,
    Colors.yellow[200],
    Colors.lightBlueAccent,
    Colors.blueGrey,
    Colors.black87
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: _buttonColors[index],
                    borderRadius: BorderRadius.circular(5)),
                height: 175,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Place Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
