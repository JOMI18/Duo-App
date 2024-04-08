import 'package:duolingo_app/customised-widgets/btns.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentSlideIns(
          beginOffset: Offset(0, -2),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 28.h,
            color: const Color(0xD2FFC3D7),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Color(0xFF505050),
                      size: 40,
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 90,
                  backgroundImage:
                      AssetImage("lib/assets/images/profile/person2.jpg"),
                ),
              ],
            ),
          ),
        ),
        ComponentSlideIns(
          beginOffset: Offset(2, 0),
          child: Container(
            height: 25.h,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jomiii",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 23.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "lib/assets/images/lang_img/spanish.png",
                          height: 3.5.h,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "lib/assets/images/lang_img/italian.png",
                          height: 3.5.h,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Jomiii1",
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Joined May 2020",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      "178 Following",
                      style: TextStyle(
                          color: Utilities().appColors(context).secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "126 Followers",
                      style: TextStyle(
                          color: Utilities().appColors(context).secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Btns().btnsWithIconTexts(
                        context, "add friends".toUpperCase(), () {}),
                    Btns()
                        .btnsWithIcon(context, Icons.ios_share_outlined, () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 2,
          color: Color.fromARGB(255, 82, 82, 82),
        )
      ],
    );
  }
}
