import 'package:duolingo_app/services/utilities.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Friends extends StatelessWidget {
  Friends({super.key});

  final List friends = [
    {
      "img": "lib/assets/images/profile/person1.jpg",
      "name": "Feran",
      "connection": "That is your Parabatai"
    },
    {
      "img": "lib/assets/images/profile/person2.jpg",
      "name": "Pam",
      "connection": "You may know each other"
    },
    {
      "img": "lib/assets/images/profile/person3.jpg",
      "name": "Pero",
      "connection": "You may know each other"
    },
    {
      "img": "lib/assets/images/profile/person4.jpg",
      "name": "Amanii",
      "connection": "May be from your contacts"
    },
    {
      "img": "lib/assets/images/profile/person5.jpg",
      "name": "Love",
      "connection": "You may know each other"
    },
    {
      "img": "lib/assets/images/profile/person6.jpg",
      "name": "Reyes",
      "connection": "You may know each other"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ComponentSlideIns(
      beginOffset: Offset(2, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Friend Suggestions",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  "VIEW ALL",
                  style: TextStyle(
                      color: Utilities().appColors(context).secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            SizedBox(
              height: 22.h,
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(102, 158, 158, 158)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          friends[index]["img"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(Icons.close,
                                      color: Color.fromARGB(155, 81, 80, 80)),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              Text(
                                friends[index]['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 0),
                                child: Text(
                                  friends[index]['connection'],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color:
                                          Color.fromARGB(208, 143, 143, 143)),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    backgroundColor: const Color(0xFF7BD5FF),
                                    foregroundColor:
                                        const Color.fromRGBO(10, 12, 16, 0.773),
                                    fixedSize: const Size(120, 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Text(
                                  "follow".toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
