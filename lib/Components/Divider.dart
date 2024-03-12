import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

Widget divider(BuildContext context) => SizedBox(
      height: 50.0,
      width: MediaQuery.sizeOf(context).width * (80 / 100),
      child: Divider(
        color: backColor2,
        thickness: 3.0,
      ),
    );
