import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Yellow Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: const _Icerik(),
      ),
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Onay Ekranı"),
              content: const Text("Geri dönmek istediğinizden emin misiniz?"),
              actions: [
                ButtonBar(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: const Text("Eminim")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text("Hayır"))
                  ],
                )
              ],
            );
          },
        );
      },
    );
  }
}

class _Icerik extends StatelessWidget {
  const _Icerik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/ogrenciler",
                (route) => route.settings.name == "/",
              );
            },
            child: const Text("xx")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/kirmizi");
            },
            child: const Text("Kırmızı sayfata git")),
      ],
    );
  }
}
