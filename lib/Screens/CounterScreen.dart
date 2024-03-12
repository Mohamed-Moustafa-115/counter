import 'package:animated_button/animated_button.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}

GlobalKey<State> globalKey2 = GlobalKey();

class _CounterState extends State<Counter> {
  @override
  void initState() {
    super.initState();
  }

  int curr_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$count",
                style: TextStyle(fontSize: 100, color: fontColor),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedButton(
                  duration: 100,
                  color: const Color(0xFFcfb53b),
                  height: MediaQuery.sizeOf(context).height * (20 / 100),
                  width: MediaQuery.sizeOf(context).height * (20 / 100),
                  shadowDegree: ShadowDegree.light,
                  onPressed: () async {
                    setState(() {
                      ++count;
                    });
                    updateDB(count);
                  },
                  shape: BoxShape.circle,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                AnimatedButton(
                  duration: 100,
                  color: const Color(0xFFcfb53b),
                  width: MediaQuery.sizeOf(context).height * (10 / 100),
                  height: MediaQuery.sizeOf(context).height * (10 / 100),
                  onPressed: () async {
                    setState(() {
                      count = 0;
                    });
                    updateDB(count);
                  },
                  shape: BoxShape.circle,
                  child: const Center(child: Icon(Icons.restart_alt)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void updateDB(int num) async {
    await dataBase.transaction((txn) async {
      await txn.rawUpdate("UPDATE 'Counter' SET count=$num");
      print("Updated successfully");
      return null;
    });
  }
}

Future<List<Map>> getNum(dataBase) async {
  return await dataBase.rawQuery('SELECT * FROM Counter');
}
