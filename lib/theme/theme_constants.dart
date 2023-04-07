// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.white;
const COLOR_ACCENT = Colors.black;
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: _textThemeLight,
  primaryColor: COLOR_PRIMARY,
  buttonColor: Colors.black,
  shadowColor: Colors.black,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: _textThemeDark,
  primaryColor: COLOR_ACCENT,
  buttonColor: Colors.white,
  shadowColor: Colors.white,
);

TextTheme _textThemeLight = const TextTheme(
  headline4: TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  bodyText2: TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
  headline3: TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  subtitle2: TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
);

TextTheme _textThemeDark = const TextTheme(
  headline4: TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  bodyText2: TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
  headline3: TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  subtitle2: TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
);