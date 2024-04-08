import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

// ignore: must_be_immutable
class Offline extends StatelessWidget {
  Offline({super.key, required this.title});

  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities().appColors(context).primary,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wifi_off_outlined),
            SizedBox(
              width: 10,
            ),
            Text(
              "You are Offline",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComponentSlideIns(
              beginOffset: Offset(2, 0),
              child: Image.asset(
                "lib/assets/images/others/sleepy-duo.png",
                height: 17.h,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            ComponentSlideIns(
              beginOffset: Offset(3, 0),
              child: Text(
                "${title} is currently unavailable",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
              ),
            ),
            ComponentSlideIns(
              beginOffset: Offset(4, 0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "You seem to be offline. Check your connection or try again later!",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
