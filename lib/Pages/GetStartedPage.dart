import 'package:demoapp/Pages/homePage.dart';
import 'package:demoapp/Pages/myaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool isSwipeEnded;
  final _colors = [Colors.green, Colors.grey, Colors.cyanAccent];

  @override
  void initState() {
    // TODO: implement initState
    isSwipeEnded = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: buildSwiper(context),
    );
  }

  Container buildSwiper(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 100, right: 10, left: 10, top: 10),
        child: Swiper(
          loop: false,
          itemCount: _colors.length,
          itemHeight: MediaQuery.of(context).size.height - 150,
          itemWidth: MediaQuery.of(context).size.width - 50,
          pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
          onIndexChanged: (value) {
            setState(() {
              if (value == _colors.length - 1) {
                print("hello$value");
                getStartedbutton(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Myaccount()));
              }
            });
          },
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              color: _colors[index],
            );
          },
        ),
      ),
    );
  }

  Widget getStartedbutton(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 100,
      width: MediaQuery.of(context).size.width - 30,
      color: Colors.white12,
    );
  }

  Column pageContentLogo(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Image.asset(
          "images/ProfileImages/CancerIcon.png",
          alignment: Alignment.topCenter,
          height: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Welcome",
          style: TextStyle(
              letterSpacing: 15,
              color: Colors.black,
              fontSize: 30,
              fontStyle: FontStyle.normal,
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.none),
        ),
        Text(
          loremIpsum(words: 20),
          style: TextStyle(
              decoration: TextDecoration.none,
              fontStyle: FontStyle.normal,
              color: Colors.black,
              decorationStyle: TextDecorationStyle.solid,
              fontSize: 15),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 90,
        ),
        getStartedButton(context)
      ],
    );
  }

  FlatButton getStartedButton(BuildContext context) {
    return FlatButton(
      highlightColor: Colors.white,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Center(
            child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontStyle: FontStyle.normal,
            decorationStyle: TextDecorationStyle.solid,
            decoration: TextDecoration.none,
          ),
        )),
        height: 80,
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.greenAccent[200],
                Colors.green[400],
                Colors.green[900]
              ],
            )),
      ),
    );
  }
}
