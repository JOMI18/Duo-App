import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utilities().appColors(context).primary,
      body: SingleChildScrollView(
        child: Column(
          children: [UserDetails(), Statistics(), Friends(), Achievements()],
        ),
      ),
    );
  }
}
