import 'package:counter/Components/Divider.dart';
import 'package:counter/Components/Text.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

class OutDoor extends StatefulWidget {
  const OutDoor({Key? key}) : super(key: key);

  @override
  State<OutDoor> createState() => _OutDoorState();
}

class _OutDoorState extends State<OutDoor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_title,
      home: Scaffold(
        backgroundColor: backColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    titleText(context, "الذكر عندالدخول والخروج"),
                    titleText(context, "من المنزل"),
                    normalText(context,
                        "(بِسْمِ اللَّهِ، تَوَكَّلْتُ عَلَى اللَّهِ، وَلَاَ حَوْلَ وَلَا قُوَّةَ إِلاَّ بِاللَّهِ). "),
                    divider(context),
                    normalText(context,
                        "(اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أَضِلَّ، أَوْ أُضَلَّ، أَوْ أَزِلَّ، أَوْ أُزَلَّ، أَوْ أَظْلِمَ، أَوْ أُظْلَمَ، أَوْ أَجْهَلَ، أَوْ يُجْهَلَ عَلَيَّ)."),
                    divider(context),
                    normalText(context,
                        "(بِسْمِ اللَّهِ وَلَجْنَا، وَبِسْمِ اللَّهِ خَرَجْنَا، وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا، ثُمَّ لِيُسَلِّمْ عَلَى أَهْلِهِ). "),
                  ],
                ),
              ),
              divider(context),
            ],
          ),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
