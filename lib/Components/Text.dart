import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

Widget titleText(BuildContext context, String txt) => Text(
      txt,
      style: TextStyle(
          color: fontColor, fontSize: 40.0, fontWeight: FontWeight.bold),
      textDirection: TextDirection.rtl,
    );

Widget normalText(BuildContext context, String txt) => Text(
      txt,
      style: TextStyle(color: fontColor, fontSize: 35.0),
      textDirection: TextDirection.rtl,
    );

Widget boldNormalText(BuildContext context, String txt) => Text(
      txt,
      style: TextStyle(
          color: fontColor, fontSize: 35.0, fontWeight: FontWeight.bold),
      textDirection: TextDirection.rtl,
    );
Widget note(BuildContext context, String txt) => Text(
      txt,
      style: TextStyle(
          color: fontColor, fontSize: 15.0, fontWeight: FontWeight.bold),
      textDirection: TextDirection.rtl,
    );
Widget combineText(BuildContext context, Widget w1, Widget w2) => Row(
      children: [w1, w2],
    );
