import 'package:app_iki/popupbutton_widgetleri.dart';
import 'package:flutter/material.dart';

void main() {
  debugPrint("main çalıştı");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("my app çalıştı");
    return MaterialApp(
      title: "MustiApp",
      theme: ThemeData(
          primarySwatch: Colors.teal,
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal))),
          badgeTheme: const BadgeThemeData(backgroundColor: Colors.amber),
          textTheme: const TextTheme(
              titleLarge:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.w900))),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("home page çalıştı");
    return const PopupButtonPage();
  }
}
