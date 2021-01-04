import 'package:flutter/material.dart';

class NatTreatHostpital extends StatefulWidget {
  @override
  _NatTreatHostpitalState createState() => _NatTreatHostpitalState();
}

//Name, Address, Location, Image, Comments
class _NatTreatHostpitalState extends State<NatTreatHostpital> {
  Widget bottomSheetContainer() {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Row(
        children: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.camera),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {}),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (builder) => bottomSheetContainer());
              },
              child: Container(
                color: Colors.greenAccent,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
