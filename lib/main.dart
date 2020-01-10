import 'package:flutter/material.dart';
import 'package:movie22/spalsh/splash1.dart';
import 'package:movie22/spalsh/splashscreen.dart';
import 'package:movie22/spalsh/spalsh2.dart';


import 'dart:async';

import 'home.dart';

var routes= <String,WidgetBuilder>{
  "/splashone" : (BuildContext context) => SplashScreenTwo(),
  "/splashTwo" : (BuildContext context) => SplashScreenOne(),
  "/spalash" :(BuildContext context) =>  SplashScreen(),
  "/Home" :(BuildContext context) =>  Home(),

};

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Color(0xff622f74),
    accentColor: Colors.deepOrange,
  ),
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  routes: routes,

));

