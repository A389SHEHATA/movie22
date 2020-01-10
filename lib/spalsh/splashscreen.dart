import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds :1),()=>Navigator.pushNamed(context, "/splashone"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xff622f74),
              gradient: LinearGradient(
                colors: [Color(0xff6094e8), Color(0xffde5cbc)],
                begin: Alignment.centerRight,
                end: Alignment(-1.0, -1.0),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.beach_access,
                  color: Colors.purpleAccent,
                  size: 50.0,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                "welcome to movie app",
                style: TextStyle(color: Colors.white,fontSize: 24.0),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
