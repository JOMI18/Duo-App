import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities().appColors(context).primary,
      body: Offline(
        title: "Challenges",
      ),
    );
  }
}
