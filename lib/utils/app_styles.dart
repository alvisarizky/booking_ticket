import 'package:flutter/material.dart';

Color primary = const Color(0xff687DAF);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3B3B3B);
  static Color bgColor = const Color(0xffEEEDF2);
  static Color orangeColor = const Color(0xffF37B67);
  static Color kakiColor = const Color(0xffD2BDD6);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}
