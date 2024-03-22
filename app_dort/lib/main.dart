import 'package:flutter/material.dart';
import 'package:app_dort/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Routing İşlemleri",
      onGenerateRoute: AppRoute.appRoute,
    );
  }
}
