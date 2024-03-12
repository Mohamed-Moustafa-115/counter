import 'package:counter/Components/BtnNav.dart';
import 'package:counter/Screens/DayandNightScreen.dart';
import 'package:counter/Screens/MasjidScreen.dart';
import 'package:counter/Screens/OutDoorScreen.dart';
import 'package:counter/Screens/PrayerScreen.dart';
import 'package:counter/Screens/SleepingScreen.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

GlobalKey<State> globalKey1 = GlobalKey();

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    globalKey1.currentState?.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buttonNav(context, const Txt(), "images/prayer-mat.png",
                "الأذكار بعد السلام من الصلاة"),
            buttonNav(context, const Day_Night(), "images/day-and-night.png",
                "أذكار الصباح و المساء"),
            buttonNav(context, const OutDoor(), "images/pngegg.png",
                "الذكر عند الدخول و الخروج من المنزل"),
            buttonNav(context, const Sleeping(), "images/sleeping.png",
                "أذكار النوم"),
            buttonNav(
                context, const Masjid(), "images/Mosque.png", "أدعية المسجد"),
          ],
        ),
      ),
    );
  }
}
