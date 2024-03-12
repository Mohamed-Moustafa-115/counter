import 'package:animated_button/animated_button.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

double setHeight(BuildContext context) {
  if (MediaQuery.sizeOf(context).width > MediaQuery.sizeOf(context).height) {
    return height = MediaQuery.sizeOf(context).height * (95 / 100);
  } else {
    return height = MediaQuery.sizeOf(context).height * (35 / 100);
  }
}

double setWidth(BuildContext context) {
  if (MediaQuery.sizeOf(context).width > MediaQuery.sizeOf(context).height) {
    return width = MediaQuery.sizeOf(context).width * (95 / 100);
  } else {
    return width = MediaQuery.sizeOf(context).width * (95 / 100);
  }
}

Widget buttonNav(BuildContext context, Widget destination, String imagePath,
        String text) =>
    Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: AnimatedButton(
          color: const Color(0xFFcfb53b),
          duration: 30,
          width: setWidth(context),
          height: setHeight(context),
          onPressed: () {
            Get.to(destination, transition: Transition.zoom);
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  width: MediaQuery.sizeOf(context).width * (30 / 100),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).width * (6 / 100)),
                  softWrap: false,
                )
              ],
            ),
          ]),
        ),
      ),
    );
