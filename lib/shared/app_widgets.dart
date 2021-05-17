import 'package:flutter/material.dart';

Widget defaultText({
  @required String title,
  String fontFamily = 'SourceSansPro',
  double fontSize = 20.0,
  Color color = Colors.blueGrey,
  FontWeight fontWeight = FontWeight.bold,
}) =>
    Text(
      title,
      style: TextStyle(
          fontSize: fontSize,
          letterSpacing: 1.5,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );