import 'package:duolingo_app/imports.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            title: 'Duolingo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "NunitoSans",
              textTheme: const TextTheme(
                bodyMedium:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                bodyLarge:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                bodySmall:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              colorScheme: ColorScheme.fromSeed(
                // background: const Color.fromARGB(255, 141, 20, 20),
                primary: const Color(0xC51B222C),
                seedColor: const Color(0xC51B222C),
                surfaceVariant: const Color.fromARGB(255, 187, 221, 250),
                secondary: const Color(0xFF7BD5FF),
              ),
              useMaterial3: true,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Color(0xC51B222C),
              ),
              appBarTheme: const AppBarTheme(
                  backgroundColor: Color(0xC51B222C),
                  foregroundColor: Colors.white),
            ),
            initialRoute: "dashboard",
            routes: {
              "dashboard": (context) => const Dashboard(),
              "profile": (context) => const Profile(),
              "offline": (context) => Offline(
                    title: "Screen",
                  ),
            });
      },
      maxTabletWidth: 900,
    );
  }
}
