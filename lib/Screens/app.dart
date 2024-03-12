import 'package:counter/Screens/CounterScreen.dart';
import 'package:counter/Screens/MenuScreen.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: backColor,
          child: SafeArea(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    if (darkmode == false) {
                      setState(() {
                        darkmode = true;
                        backColor = const Color(0xFF1A1F38);
                        backColor2 = const Color(0xFF0A0E21);
                        backColor3 = Colors.white54;
                        fontColor = Colors.white;
                        active = "مفعل";
                        globalKey1.currentState?.setState(() {});
                        globalKey2.currentState?.setState(() {});
                        dataBase.transaction((txn) async {
                          await txn.rawUpdate(
                              "UPDATE 'Counter' SET dark_mode='true'");
                        });
                      });
                    } else if (darkmode == true) {
                      setState(() {
                        darkmode = false;
                        backColor = const Color(0xFFf9eddb);
                        backColor2 = const Color(0xFFecdcc1);
                        backColor3 = Colors.black54;
                        fontColor = Colors.black;
                        active = "غير مفعل";
                        globalKey1.currentState?.setState(() {});
                        globalKey2.currentState?.setState(() {});
                        dataBase.transaction((txn) async {
                          await txn.rawUpdate(
                              "UPDATE 'Counter' SET dark_mode='false'");
                        });
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        active,
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        "الوضع الداكن",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.mode_night_sharp,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text(
              "سؚبحؘة",
              style: TextStyle(fontSize: 50),
            ),
          ),
          actions: const [
            TextButton(
              onPressed: null,
              child: SizedBox(
                width: 30.0,
              ),
            )
          ],
        ),
        body: IndexedStack(
          index: curr_index,
          children: screen,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: backColor2,
            currentIndex: curr_index,
            onTap: (index) {
              setState(() {
                curr_index = index;
              });
            },
            selectedItemColor: Colors.green,
            unselectedItemColor: backColor3,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle), label: "عداد التسبيح"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book_rounded), label: "أذكار و أدعية"),
            ]));
  }
}
