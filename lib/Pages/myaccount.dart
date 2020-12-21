import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class Myaccount extends StatefulWidget {
  @override
  _MyaccountState createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  
  bool isLoginEnabled;

  @override
  void initState() {
    // TODO: implement initState
    isLoginEnabled = false;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[800],
      child: Stack(
        children: [
          backgroundDesign(context),
          topPanelContent(context),
          Positioned(
              height: MediaQuery.of(context).size.height / 8,
              width: 50,
              right: 30,
              top: 30,
              child: GestureDetector(
                onTap: () {
                  print("ClosebuttonPressed");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
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

  Padding topPanelContent(BuildContext context) {s
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 120,
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 10)],
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30)),
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: Material(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [authButtons(), inputfield()],
            ),
          ),
        ),
      ]),
    );
  }

  Padding inputfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: isLoginEnabled ? loginForm() : singUpForm(),
    );
  }

  Form loginForm() {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextFormField(
          validator: (value) {
            if (value.trim().isEmpty) {
              return "email is required";
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline,
                color: Colors.orange,
              ),
              hintText: "Username"),
        ),
        SizedBox(
          height: 50,
        ),
        TextFormField(
          validator: (value) {
            if (value.trim().isEmpty) {
              return "email is required";
            }
            return null;
          },
          maxLength: 8,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.orange,
              ),
              hintText: "Password",
              fillColor: Colors.orange[200]),
        ),
        signInButton("SignIn"),
        dividerWithText(),
        singUpButton("SignUp"),
      ],
    ));
  }

  Form singUpForm() {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextFormField(
          validator: (value) {
            if (value.trim().isEmpty) {
              return "email is required";
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline,
                color: Colors.orange,
              ),
              hintText: "Username or email"),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          validator: (value) {
            if (value.trim().isEmpty) {
              return "email is required";
            }
            return null;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline,
                color: Colors.orange,
              ),
              hintText: "password"),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          validator: (value) {
            if (value.trim().isEmpty) {
              return "email is required";
            }
            return null;
          },
          maxLength: 8,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.vpn_key_outlined,
                color: Colors.orange,
              ),
              hintText: "confirm password",
              fillColor: Colors.orange[200]),
        ),
        signInButton("SignIn"),
        dividerWithText(),
        singUpButton("SignUp"),
      ],
    ));
  }

  Row dividerWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 3,
            ),
          ),
        ),
        Text("or"),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 3,
            ),
          ),
        ),
      ],
    );
  }

  Padding signInButton(String buttonName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
          onPressed: null,
          child: Text(
            buttonName,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Padding singUpButton(String buttonName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
          onPressed: null,
          child: Text(
            buttonName,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
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
            color: Colors.white60,
          ),
        )
      ],
    );
  }

  Padding authButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLoginEnabled = true;
                    });
                    print("isLogin: $isLoginEnabled");
                  },
                  child: Text(
                    "SignIn",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:
                            isLoginEnabled ? Colors.orange[800] : Colors.grey),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLoginEnabled = false;
                    });
                  },
                  child: Text("SignUp",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isLoginEnabled
                              ? Colors.grey[400]
                              : Colors.orange[800])))
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
