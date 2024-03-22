import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Red Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: const _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  const _Icerik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/sari", arguments: <String, String>{
                "ad": "mustafa",
                "yas": "kırkbes"
              });
            },
            child: const Text(
              "Sari Sayfaya Git",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
            onPressed: () async {
              Navigator.popUntil(context, ModalRoute.withName("/"));
            },
            child: const Text("Home Sayfaya Git"))
      ],
    );
  }
}
