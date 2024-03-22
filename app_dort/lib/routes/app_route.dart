import 'package:app_dort/sayfalar/bos_page.dart';
import 'package:app_dort/sayfalar/home_page.dart';
import 'package:app_dort/sayfalar/red_page.dart';
import 'package:app_dort/sayfalar/yellow_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_dort/sayfalar/ogrenci_page.dart';
import 'package:app_dort/sayfalar/ogrenci_detay_page.dart';

class AppRoute {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const HomePage(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (context) => const HomePage(), settings: settings);

      case '/kirmizi':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
              builder: (context) => const RedPage(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (context) => const RedPage(), settings: settings);

      case '/sari':
        return MaterialPageRoute(
            builder: (context) => const YellowPage(), settings: settings);

      case '/ogrenciler':
        return MaterialPageRoute(
            builder: (context) => const OgrenciPage(), settings: settings);

      case '/ogrenci_detay':
        Map<String, dynamic> arguments =
            settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) =>
                OgrenciDetayPage(ad: arguments["ad"], yas: arguments["yas"]),
            settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => const BosPage(), settings: settings);
    }
  }
}
