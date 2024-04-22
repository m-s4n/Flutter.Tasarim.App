import 'package:flutter/material.dart';
import 'package:tasarim_app/widgets/pages/anasayfa_page.dart';
import 'package:tasarim_app/routes/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AnaSayfaPage(),
      theme: ThemeData(
          fontFamily: 'Montserrat',
          textTheme: const TextTheme(
              labelMedium: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ))),
      onGenerateRoute: AppRoutes.appRoute,
    );
  }
}
