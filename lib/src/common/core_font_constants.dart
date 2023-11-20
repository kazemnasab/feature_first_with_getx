import 'package:flutter/material.dart';

abstract class CoreFontsConstants {
  static const String faPrimaryFontFamily = 'iransans';

  static const Color mainTextColor = Color(0xFF505050);
  static const Color errorColor = Colors.red;
  static const FontWeight lightFontWeight = FontWeight.w300;
  static const FontWeight regularFontWeight = FontWeight.w400;
  static const FontWeight mediumFontWeight = FontWeight.w500;
  static const FontWeight semiBoldFontWeight = FontWeight.w600;
  static const FontWeight boldFontWeight = FontWeight.w700;

  static const double fontSize18 = 20;
  static const double fontSize16 = 18;
  static const double fontSize14 = 16;
  static const double fontSize12 = 14;
  static const double fontSize10 = 12;
  static const double fontSize8 = 8;

  static const h1Regular16 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: Colors.white,
    fontSize: CoreFontsConstants.fontSize16,
  );

  static const h2Bold14 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.boldFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize14,
  );

  static const h2Medium14 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.mediumFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize14,
  );

  static const b1Bold12 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.boldFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize12,
  );

  static const b2Medium12 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.mediumFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize12,
  );

  static const b3Regular12 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize12,
  );

  static const b4Medium10 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.mediumFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize10,
  );

  static const b5Regular10 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: CoreFontsConstants.mainTextColor,
    fontSize: CoreFontsConstants.fontSize10,
  );

  static const buttonRegular18 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: Colors.white,
    fontSize: CoreFontsConstants.fontSize18,
  );

  static const buttonRegular16 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: Colors.white,
    fontSize: CoreFontsConstants.fontSize16,
  );

  static const buttonMedium10 = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.mediumFontWeight,
    color: Colors.white,
    fontSize: CoreFontsConstants.fontSize10,
  );

  static const errorStyle = TextStyle(
    fontFamily: CoreFontsConstants.faPrimaryFontFamily,
    fontWeight: CoreFontsConstants.regularFontWeight,
    color: CoreFontsConstants.errorColor,
    fontSize: 10,
  );
}
