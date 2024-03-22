import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ElevatedButton(
            onPressed: () async {
              Navigator.pushNamed(context, "/kirmizi");
            },
            child: const Text("Kırmızı Sayfaya Git")),
        ElevatedButton(
            onPressed: () async {
              Navigator.pushNamed(context, "/sari");
            },
            child: const Text("Sarı Sayfaya Git")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/ogrenciler");
            },
            child: const Text("Ogrenci Listesi")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/ogrenci_detay",
                  arguments: <String, dynamic>{"ad": "mustafa", "yas": 30});
            },
            child: const Text("Ogrenci Detay"))
      ],
    );
  }
}
