import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Achievements extends StatelessWidget {
  Achievements({super.key});

  final List categories = [
    {
      "cardText": "LEVEL 8",
      "cardColor": const Color.fromARGB(255, 51, 5, 125),
      "icon": Icons.star_half_outlined,
      "text": "Nocturnal",
      "btnText": "CLAIM REWARD",
      "bgColor": const Color.fromARGB(255, 255, 204, 0),
      "iconColor": Colors.amber,
    },
    {
      "cardText": "LEVEL 6",
      "cardColor": const Color.fromARGB(255, 10, 116, 187),
      "icon": Icons.shield,
      "text": "Legendary",
      "btnText": "CLAIM REWARD",
      "bgColor": const Color.fromARGB(255, 255, 204, 0),
      "iconColor": Colors.amber,
      "challenge": "Complete 75 legendary levels",
      "indicatorValue": 0.87,
      "indicatorCount": "68/75",
    },
    {
      "cardText": "LEVEL 5",
      "cardColor": const Color.fromARGB(255, 119, 10, 187),
      "icon": Icons.timer,
      "text": "Challenger",
      "btnText": "CLAIM REWARD",
      "bgColor": const Color.fromARGB(255, 255, 204, 0),
      "iconColor": const Color.fromARGB(255, 209, 152, 255),
      "challenge": "Earn 5000 XP in timed challenges",
      "indicatorValue": 0.98,
      "indicatorCount": "4.9k/5k",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: Offset(0, 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Achievements",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                height: 54.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(116, 255, 255, 255))),
                child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 18),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Colors.white))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    padding: const EdgeInsets.all(0),
                                    backgroundColor: categories[index]
                                        ["cardColor"],
                                    fixedSize: const Size(80, 100),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        categories[index]["icon"],
                                        size: 40,
                                        color: categories[index]["iconColor"],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        categories[index]["cardText"],
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 225, 225, 225),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      categories[index]["text"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    index < 1
                                        ? ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 5,
                                                backgroundColor:
                                                    const Color(0xFF7BD5FF),
                                                foregroundColor:
                                                    const Color.fromRGBO(
                                                        10, 12, 16, 0.773),
                                                fixedSize: const Size(220, 10),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            onPressed: () {},
                                            child: Text(
                                              categories[index]["btnText"],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          )
                                        : Column(
                                            children: [
                                              Text(
                                                categories[index]["challenge"],
                                                style: const TextStyle(
                                                    // fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 160,
                                                    child:
                                                        LinearProgressIndicator(
                                                      // the value property of LinearProgressIndicator should be a double between 0.0 and 1.0 representing the percentage of completion.
                                                      value: categories[index]
                                                          ["indicatorValue"],
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  15)),
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              118,
                                                              118,
                                                              118),
                                                      color: Colors.amber,
                                                      minHeight: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text(
                                                    categories[index]
                                                        ["indicatorCount"],
                                                    style: const TextStyle(
                                                        // fontWeight: FontWeight.w600,
                                                        fontSize: 16,
                                                        color: Color(
                                                            (0x9DFFFFFF))),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (index == categories.length - 1)
                            GestureDetector(
                              onTap: () {
                                print("reaching");
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View 11 more",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                        ],
                      );
                    })),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
