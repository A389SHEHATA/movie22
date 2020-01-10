import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenTwoState ();
  }
}

class SplashScreenTwoState extends State<SplashScreenTwo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds :1),()=>Navigator.pushNamed(context, "/splashTwo"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xff22eeff),
              gradient: LinearGradient(
                colors: [Color(0xff225cbc), Color(0xffde5cbc)],
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
                  Icons.ac_unit,
                  color: Colors.purpleAccent,
                  size: 50.0,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                "movie app",
                style: TextStyle(color: Colors.white,fontSize: 24.0),

              ),
            ],
          ),
        ],
      ),
    );
  }
}