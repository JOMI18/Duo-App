import 'package:duolingo_app/imports.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  Statistics({super.key});

  final List categories = [
    {
      "icon": Icons.stream,
      "text": "620",
      "subtitle": "Day streak",
      "bgColor": const Color.fromARGB(255, 255, 204, 0),
      "iconColor": const Color(0xFFFF4C1B),
    },
    {
      "icon": Icons.energy_savings_leaf,
      "text": "107646",
      "subtitle": "Total XP",
      "bgColor": const Color(0xC51B222C).withOpacity(0.1),
      "iconColor": const Color(0xFFFFCC00),
    },
    {
      "icon": Icons.shield,
      "text": "Emerald",
      "subtitle": "Current league",
      "bgColor": const Color(0xC51B222C).withOpacity(0.1),
      "iconColor": Colors.green,
    },
    {
      "icon": Icons.workspace_premium_outlined,
      "text": "24",
      "subtitle": "Top 3 finishes",
      "bgColor": const Color(0xC51B222C).withOpacity(0.1),
      "iconColor": const Color(0xFFFFCC00),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: Offset(-2, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Statistics",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 25.h,
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:
                      4.5 / 2, // Adjust this value to control item height
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Positioned(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 6,
                              fixedSize: const Size(185, 60),
                              side: const BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(155, 81, 80, 80)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: categories[index]["bgColor"],
                            ),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      categories[index]["icon"],
                                      size: 25,
                                      color: categories[index]["iconColor"],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      categories[index]["text"],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      categories[index]["subtitle"],
                                      style:
                                          // TextStyle(color: Colors.white, fontSize: 14),
                                          const TextStyle(
                                              color: Color(0x67FFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800),
                                    )
                                  ],
                                )
                              ],
                            ))),
                    if (index == 2)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          color: Colors.green,
                          child: const Text(
                            "WEEK 1",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                      )
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
