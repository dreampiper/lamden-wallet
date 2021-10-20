import 'package:flutter/material.dart';

// Colors
const Color kWhite = Color(0xFFFFFFFF);
const Color kBlack = Color(0xFF000000);
const Color kGrey = Color(0xFF383838);
const Color kBlueGrey100 = Color(0xFF84949E);
const Color kBlueGrey200 = Color(0xFFA4B2BB);
const Color kBlue100 = Color(0xFF461BC2);
const Color kBlue200 = Color(0xFF4FB8FF);

// Padding
const double kPaddingM = 24.0;
const double kPaddingL = 25.0;

// Spacing
const double kSpaceS = 40.0;
const double kSpaceM = 35.0;

// Margin
const double kMarginS = 8.0;
const double kMarginM = 24.0;
const double kMarginL = 25.0;

// Border Raduis
const double kRadiusS = 5.0;
const double kRadiusM = 10.0;
const double kRadiusL = 15.0;
const double kRadiusXL = 35.0;

// Assets
const String heroBg = 'assets/images/hero_bg.png';

// Gradient
const homeBgGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromRGBO(21, 21, 21, 0),
      Color.fromRGBO(21, 21, 21, 1),
    ],
  ),
);

// Shadow
List<BoxShadow> customShadow2 = [
  BoxShadow(
    color: Color.fromARGB(70, 201, 201, 201),
    blurRadius: 3.0, // soften the shadow
    spreadRadius: 1.0, //extend the shadow
    offset: Offset(
      -1, // Move to right horizontally
      0, // Move to bottom Vertically
    ),
  ),
  BoxShadow(
    color: Color.fromARGB(30, 201, 201, 201),
    blurRadius: 20.0, // soften the shadow
    spreadRadius: 2.0, //extend the shadow
    offset: Offset(
      0.0, // Move to right horizontally
      4.0, // Move to bottom Vertically
    ),
  ),
];

List<BoxShadow> customShadow3 = [
  BoxShadow(
    color: Color.fromRGBO(150, 170, 180, 0.5),
    spreadRadius: -10.0, //extend the shadow
    blurRadius: 30.0, // soften the shadow
    offset: Offset(
      0.0, // Move to right horizontally
      7.0, // Move to bottom Vertically
    ),
  ),
];

final appTheme = ThemeData(
  primarySwatch: Colors.blueGrey,
);
