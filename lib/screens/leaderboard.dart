import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities().appColors(context).primary,
      body: Offline(
        title: "Leaderboard",
      ),
    );
  }
}
