import 'package:counter/Screens/CounterScreen.dart';
import 'package:counter/Screens/MenuScreen.dart';
import 'package:counter/Screens/app.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void darkMode() {
    if (darkmode == true) {
      setState(() {
        backColor = const Color(0xFF1A1F38);
        backColor2 = const Color(0xFF0A0E21);
        backColor3 = Colors.white54;
        fontColor = Colors.white;
        active = "مفعل";
        globalKey1.currentState?.setState(() {});
        globalKey2.currentState?.setState(() {});
      });
    }
  }

  void createDB() async {
    dataBase = await openDatabase(
      "Conter.db",
      version: 2,
      onCreate: (Database dataBase, int version) async {
        try {
          await dataBase
              .execute("CREATE TABLE Counter (count INTEGER,dark_mode TEXT)");
          await dataBase.transaction((txn) async {
            await txn.rawInsert(
                "INSERT INTO Counter(count,dark_mode) VALUES(0,'false')");
          });
        } catch (error) {
          null;
        }
      },
      onOpen: (dataBase) {
        getNum(dataBase).then((value) {
          numb = value[0];
          setState(() {
            count =
                int.parse(value.toString().replaceAll(RegExp(r'[^0-9]'), ''));
            darkmode = bool.parse(numb.values.toList()[1]);
            darkMode();
          });
        });
      },
      onUpgrade: (dataBase, oldVersion, newVersion) async {
        if (oldVersion < newVersion) {
          await dataBase.execute(
              "ALTER TABLE Counter ADD COLUMN  dark_mode TEXT DEFAULT 'false'");
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createDB();
    Future.delayed(const Duration(seconds: 1, milliseconds: 500)).then(
        (value) => (Get.to(() => App(),
            transition: Transition.fadeIn,
            duration: const Duration(seconds: 2))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset("images/playstore.png"),
            )
          ],
        ),
      ),
    );
  }
}
