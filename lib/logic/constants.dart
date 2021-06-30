import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.bold, fontSize: 30.0),
    headline2: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.bold, fontSize: 26.0),
    headline3: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
    headline4: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 15),
    headline5: TextStyle(fontSize: 22.0, color: Color(0xff405061), fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 14.0, color: Color(0xff0D47A1), fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
    bodyText1: TextStyle(color: Colors.black, fontFamily: 'Meta', fontSize: 13.0, height: 1.5),
    bodyText2: TextStyle(color: Colors.white, fontFamily: 'Meta', inherit: true, fontSize: 14.0, height: 1.5),
    subtitle1: TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));


const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(color: Colors.white, fontFamily: 'Meta',fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(color: Colors.black87, fontFamily: 'Meta', fontSize: 12, fontWeight: FontWeight.w700,height: 1.5),
    bodyText2: TextStyle(color: Colors.white, fontFamily: 'Meta', fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1: TextStyle(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));


/* theme: ThemeData(
        fontFamily: 'Meta',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontFamily: 'Meta', fontSize: 14.0),
          bodyText2: TextStyle(color: Colors.white, fontFamily: 'Meta', fontSize: 14.0),
         // bodyText1: TextStyle(color: Colors.black54, fontFamily: 'Meta', fontSize: 11.0),
          headline1: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.bold, fontSize: 30.0),
          headline2: TextStyle(color: Colors.white, fontFamily: 'Meta', fontWeight: FontWeight.bold, fontSize: 26.0),
          headline3: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 22.0, color: Color(0xff405061), fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 14.0, color: Colors.blue[900], fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
        ),
        primaryColor: Color(0xff405061),
        accentColor: Colors.white,
      ),*/