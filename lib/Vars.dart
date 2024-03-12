import 'package:counter/Screens/CounterScreen.dart';
import 'package:counter/Screens/MenuScreen.dart';
import 'package:flutter/material.dart';

int count = 0;
Map numb = {};
const String app_title = "سؚبحؘة";
var dataBase;

var backColor = const Color(0xFFf9eddb);
var backColor2 = const Color(0xFFecdcc1);
var backColor3 = Colors.black54;
var fontColor = Colors.black;
List<Widget> screen = [
  Counter(
    key: globalKey2,
  ),
  Menu(
    key: globalKey1,
  ),
];

int curr_index = 0;
int idx = 0;
String? curr_page;
List<String> page_keys = ["Prayer", "DayAndNight"];
Map<String, GlobalKey<NavigatorState>> navigator_keys = {
  "Prayer": GlobalKey<NavigatorState>(),
  "DayAndNight": GlobalKey<NavigatorState>()
};
bool darkmode = false;
double? height;
double? width;

String active = "غير مفعل";
