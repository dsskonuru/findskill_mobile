import 'package:flutter/material.dart';

final theme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color.fromRGBO(0, 163, 225, 1), // Vandyl Blue
  secondaryHeaderColor: const Color.fromRGBO(0, 174, 199, 1), // Scuba Blue
  fontFamily: 'Fruitger-Lt',
  textTheme: const TextTheme(
    headline2: TextStyle(
      // QUOTE
      fontFamily: 'Fruitger-Lt',
      fontSize: 36.0,
      fontStyle: FontStyle.normal, // ROMAN
      color: Color.fromRGBO(0, 163, 225, 1), // Vandyl Blue
    ),
    headline4: TextStyle(
      // HEADLINE
      fontFamily: 'Fruitger-Lt',
      fontSize: 24.0,
      fontWeight: FontWeight.w300, // LIGHT
      color: Color.fromRGBO(0, 174, 199, 1), // Scuba Blue
    ),
    subtitle1: TextStyle(
      // SECTION
      fontFamily: 'Montserrat',
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(193, 198, 200, 1), // Pumice,
    ),
    bodyText1: TextStyle(
      // BODY COPY
      fontFamily: 'Montserrat',
      fontSize: 18.0,
      color: Color.fromRGBO(193, 198, 200, 0.5), // 50% Pumice
    ),
    bodyText2: TextStyle(
      // NOTES
      fontFamily: 'Montserrat',
      fontSize: 16.0,
      color: Color.fromRGBO(76, 95, 113, 1), // Smalt Blue,
    ),
    button: TextStyle(
      // BUTTON
      fontFamily: "Fruitger-Lt",
      fontSize: 16.0,
      color: Colors.white,
    ),
  ),
);
