import 'package:demoapp/Pages/homePage.dart';
import 'package:demoapp/Pages/myaccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool isSwipeEnded;
  final _colors = [Colors.green, Colors.grey, Colors.cyanAccent];

  //pageview properties
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    isSwipeEnded = false;
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(20))),
          child: PageView.builder(
            clipBehavior: Clip.antiAlias,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/ProfileImages/CancerIcon.webp",
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Text(
                      loremIpsum(words: 2),
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      loremIpsum(words: 10),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (int value) {
              setState(() {
                _currentPage = value;
              });
            },
          ),
        ),
        bottomSheet: bottomMenu(context),
      ),
    );
  }

  Container bottomMenu(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Skip"),
          ),
          for (var i = 0; i < 4; i++)
            _currentPage == i ? pageIndicator(true) : pageIndicator(false),
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Myaccount()));
              },
              child: Text("Next"))
        ],
      ),
    );
  }

  Row pageIndicator(bool iscurrentPage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: iscurrentPage ? 10 : 3,
          width: iscurrentPage ? 10 : 3,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(
                10,
              )),
        ),
      ],
    );
  }

  //fluter swiper plugin swipe test
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
