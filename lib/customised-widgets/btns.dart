import 'package:flutter/material.dart';
import 'package:duolingo_app/imports.dart';

class Btns {
  // ColorScheme? colorScheme;
  Btns();

  Widget btnsWithIconTexts(context, title, func) {
    // ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor:
              Utilities().appColors(context).primary.withOpacity(0.1),
          foregroundColor: Utilities().appColors(context).secondary,
          fixedSize: const Size(310, 52),
          side: const BorderSide(
              width: 3, color: Color.fromARGB(155, 81, 80, 80)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: func,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(Icons.person_add_alt_1),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
        )
      ]),
    );
  }

  Widget btnsWithIcon(context, icon, func) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 5,
          padding: const EdgeInsets.all(0),
          backgroundColor:
              Utilities().appColors(context).primary.withOpacity(0.1),
          foregroundColor: Utilities().appColors(context).secondary,
          fixedSize: const Size(70, 52),
          side: const BorderSide(
              width: 3, color: Color.fromARGB(155, 81, 80, 80)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: func,
      child: Icon(
        icon,
        size: 22.sp,
      ),
    );
  }
}
