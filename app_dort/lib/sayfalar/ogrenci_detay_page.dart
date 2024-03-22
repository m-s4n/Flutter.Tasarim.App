import 'package:flutter/material.dart';

class OgrenciDetayPage extends StatelessWidget {
  const OgrenciDetayPage({Key? key, required this.ad, required this.yas})
      : super(key: key);

  final String ad;
  final int yas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ogrenci Detay"),
      ),
      body: _Icerik(
        ad: ad,
        yas: yas,
      ),
    );
  }
}

class _Icerik extends StatelessWidget {
  final String ad;
  final int yas;
  const _Icerik({required this.ad, required this.yas, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text(ad),
          subtitle: Text(yas.toString()),
        )
      ],
    );
  }
}
