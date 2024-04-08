import 'package:flutter/material.dart';

import 'package:duolingo_app/imports.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  static List<Widget> widgetOptions = <Widget>[
    const Home(),
    const Rewards(),
    const Lessons(),
    const Leaderboard(),
    const Profile(),
    const Notifications(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        backgroundColor: Utilities().appColors(context).primary,
        body: widgetOptions.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          height: 10.h,
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 1, color: Color.fromARGB(124, 255, 255, 255)))),
          child: BottomNavigationBar(
            elevation: 5,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            selectedLabelStyle: const TextStyle(fontSize: 10),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset("lib/assets/images/lottie_icons/home.json",
                      height: 5.h),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset(
                      "lib/assets/images/lottie_icons/treasure.json",
                      height: 7.h),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset(
                      "lib/assets/images/lottie_icons/exercise.json",
                      height: 5.h),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset(
                      "lib/assets/images/lottie_icons/leaderboard.json",
                      height: 7.h),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset(
                      "lib/assets/images/lottie_icons/profile.json",
                      height: 5.h),
                  label: ""),
              BottomNavigationBarItem(
                  backgroundColor: Utilities().appColors(context).primary,
                  icon: Lottie.asset("lib/assets/images/lottie_icons/bell.json",
                      height: 6.h),
                  label: ""),
            ],
          ),
        ));
  }
}
