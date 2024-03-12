import 'package:counter/Screens/splashscreen.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

GlobalKey<State> globalKey3 = GlobalKey();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: app_title,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
