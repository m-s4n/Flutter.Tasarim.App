import 'package:app_input/pages/global_key_page.dart';
import 'package:app_input/pages/text_form_field_page.dart';
import 'package:flutter/material.dart';
import 'package:app_input/pages/home_page.dart';
import 'package:app_input/pages/not_found_page.dart';
import 'package:app_input/pages/text_field_ornek_page.dart';
import 'package:app_input/pages/register_page.dart';
import 'package:app_input/pages/date_time_page.dart';
import 'package:app_input/pages/stepper_register_page.dart';

class AppRouter {
  static Route<dynamic>? appRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const HomePage(), settings: settings);

      case '/text-field':
        return MaterialPageRoute(
            builder: (context) => const TextFieldOrnekPage(),
            settings: settings);

      case '/text-form-field':
        return MaterialPageRoute(
            builder: (context) => const TextFormFieldPage(),
            settings: settings);

      case '/sayac':
        return MaterialPageRoute(
            builder: (context) => GlobalKeyPage(), settings: settings);

      case '/register':
        return MaterialPageRoute(
            builder: (context) => const RegisterPage(), settings: settings);

      case '/tarih-islemleri':
        return MaterialPageRoute(
            builder: (context) => const DateTimePage(), settings: settings);

      case '/stepper-register':
        return MaterialPageRoute(
            builder: (context) => const StepperRegisterPage(),
            settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => const NotFoundPage(), settings: settings);
    }
  }
}
