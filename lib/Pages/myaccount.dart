import 'package:flutter/material.dart';

class Myaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Stack(
        children: [
          Column(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 120,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black45, blurRadius: 10)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: () {}, child: Text("SignIn")),
                    TextButton(onPressed: () {}, child: Text("SignUp"))
                  ],
                ),
              ),
            ]),
          )
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
