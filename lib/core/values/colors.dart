// ignore_for_file: constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';

class AppColorsLightMode {
  static const Color EspressoBrown = Color(0xff4B2c20);
  static const Color CreamyLatte = Color(0xffD5BBA2);
  static const Color RoastedCaramel = Color(0xffA67C52);
  static const Color FreshMint = Color(0xff4E8D7C);
  static const Color Black = Color(0xff272727);
  static const Color FrothyWhite = Color(0xffF6F2ED);
}

class AppColorsDarkMode {
  static const Color DarkRoast = Color(0xff332920);
  static const Color BlackCoffee = Color(0xff1E1410);
  static const Color MidnightCaramel = Color(0xff8C6A4F);
  static const Color MoonlightMint = Color(0xff3C7266);
  static const Color CharcoalFoam = Color(0xff2E2A27);
  static const Color LightGrey = Color(0xff989898);
}

const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    useMaterial3: true,
  );
  static final dart = ThemeData(
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}


