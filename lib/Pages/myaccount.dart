import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Myaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[800],
      child: Stack(
        children: [
          backgroundDesign(context),
          topPanelContent(context),
          Positioned(
              height: 50,
              width: 50,
              right: 30,
              top: 30,
              child: GestureDetector(
                onTap: () {
                  print("ClosebuttonPressed");
                },
                child: Container(
                  color: Colors.transparent,
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/icons/SupportIcon.png"),
                    height: 80,
                    width: 80,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Support \nCancer",
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        letterSpacing: 10,
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "WinterYesterday",
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding topPanelContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 120,
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 10)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)),
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: Material(
            child: Column(
              children: [
                textButton(),
                
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.orange,
                            ),
                            hintText: "Username"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.orange,
                            ),
                            hintText: "Password"),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Column backgroundDesign(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Padding textButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "SignIn",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[800]),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text("SignUp",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400])))
            ],
          ),
        ],
      ),
    );
  }
}

class CustomClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(
        size.width, size.width / 2, size.width / 2, (size.width / 2) + 10);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
