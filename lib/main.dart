import 'package:flutter/material.dart';
import 'package:to_do_app/SignUp.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: SignUp(),
              type: PageTransitionType.scale,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393F),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Welcome!
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Welcome!",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 24.0)),
            ),
          ),
          // Login into your acccunt to get started
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Login into your acccunt to get started",
                  style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 10.0,
                  )),
            ),
          ),
          // Rectangle 16
          Padding(
            padding: const EdgeInsets.only(top: 96.0),
            child: Container(
                width: 300,
                height: 32,
                child: // Email
                    Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                        color: const Color(0xffd2d2d2),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: const Color(0xff474747),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26.0),
            child: Container(
                width: 300,
                height: 32,
                child: // Email
                    Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                        color: const Color(0xffd2d2d2),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: const Color(0xff474747),
                )),
          ),
          // Rectangle 18
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Container(
                width: 300,
                height: 42,
                child: // LOGIN
                    Center(
                  child: Text("LOGIN",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0)),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: const Color(0xff18a0fb))),
          ),
          // Rectangle 18
          Container(
              width: 198,
              height: 42,
              child: // CREATE A NEW ACCOUNT
                  Padding(
                padding: const EdgeInsets.only(top: 25),
                child: GestureDetector(
                  child: Center(
                    child: Text("CREATE A NEW ACCOUNT",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0)),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: SignUp(),
                      ),
                    );
                  },
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: const Color(0xff36393f))),
          // To Do
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text("To Do",
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 32.0)),
          ),
          // Copyright 2020. All rights reserved.
          Text("Copyright 2020. All rights reserved.",
              style: const TextStyle(
                  color: const Color(0xffc8c8c8),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 10.0))
        ],
      )),
    );
  }
}
