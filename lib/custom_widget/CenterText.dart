import 'package:flutter/material.dart';

Widget CenterText(
    {required String? text,
    TextAlign? textAlign,
    TextDirection? textDirection,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color}) {
  return Text(
    text!,
    textAlign: textAlign,
    textDirection: textDirection,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}
