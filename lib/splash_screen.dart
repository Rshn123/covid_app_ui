import 'dart:async';
import 'package:covid_app/constants.dart';
import 'package:covid_app/ui/startup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushNamed(context, startUpScreenRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(fit: StackFit.expand, children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      child: Image.asset('images/Frame.png')),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "COVSTATS",
                    style: TextStyle(
                        color: Color(0xffff647c),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\u00a9 Copyright COVSTATS 2020. All rights reserved",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    ])));
  }
}
