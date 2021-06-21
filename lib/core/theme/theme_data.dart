import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  colorScheme: colorScheme,
  textTheme: textTheme,
);

Color vandylBlue = const Color.fromRGBO(0, 163, 225, 1);
Color scubaBlue = const Color.fromRGBO(0, 174, 199, 1);
Color pumice = const Color.fromRGBO(193, 198, 200, 1);
Color pumice50 = const Color.fromRGBO(193, 198, 200, 0.5);
Color smaltBlue = const Color.fromRGBO(76, 95, 113, 1);

final ColorScheme colorScheme = const ColorScheme.light().copyWith(
  primary: vandylBlue,
  primaryVariant: scubaBlue,
  secondary: pumice,
  secondaryVariant: pumice50,
);

final buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(vandylBlue),
  textStyle: MaterialStateProperty.all<TextStyle>(textTheme.button!),
);

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.hind(
    fontSize: 100,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  headline2: GoogleFonts.hind(
    fontSize: 62,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  headline3: GoogleFonts.hind(
    fontSize: 50,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.hind(
    fontSize: 35,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  headline5: GoogleFonts.hind(
    fontSize: 25,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.hind(
    fontSize: 21,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  subtitle1: GoogleFonts.hind(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  ),
  subtitle2: GoogleFonts.hind(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  ),
  bodyText1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  bodyText2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  button: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Colors.white,
  ),
  caption: GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  overline: GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
);
