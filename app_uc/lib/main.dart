import 'package:app_uc/test_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scrolling Widget'lar",
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.amber,
          dividerColor: Colors.pink.shade100,
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed))
              return Colors.deepPurple;

            return Colors.deepOrangeAccent;
          }), shape:
                  MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
            return StadiumBorder();
          })))),
      home: const TestPage(),
      builder: EasyLoading.init(),
      // builder: (context, child) {
      //   child = FlutterEasyLoading(
      //     child: child,
      //   );
      //   return Stack(
      //     children: [
      //       child,
      //       Positioned(
      //         bottom: 20,
      //         right: 20,
      //         child: FloatingActionButton(
      //           onPressed: () {},
      //           child: const Icon(Icons.ac_unit),
      //         ),
      //       )
      //     ],
      //   );
      // },
    );
  }
}
