import 'package:flutter/material.dart';
import 'package:tasarim_app/widgets/pages/anasayfa_page.dart';
import 'package:tasarim_app/widgets/pages/item_detailed_page.dart';
import 'package:tasarim_app/widgets/pages/not_found_page.dart';

class AppRoutes {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const AnaSayfaPage(), settings: settings);

      case '/detay':
        return MaterialPageRoute(
            builder: (context) => ItemDetailedPage(
                  img: settings.arguments as String,
                ),
            settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => const NotFoundPage(), settings: settings);
    }
  }
}
