import 'package:flutter/material.dart';
import 'package:netflix/app/global/const/colors.dart';

class Apptheme {
  static final appTheme = ThemeData(
     
    iconTheme: IconThemeData(color: Colors.white),
    scaffoldBackgroundColor: backgroundColor,
    backgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      // titleTextStyle: TextStyle(color: black),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.blue,
    ),
  );
}
