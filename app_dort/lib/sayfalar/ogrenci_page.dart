import 'package:flutter/material.dart';
import 'package:app_dort/entities/ogrenci.dart';

class OgrenciPage extends StatelessWidget {
  const OgrenciPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Öğrenci Listesi"),
      ),
      body: const _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  const _Icerik({Key? key}) : super(key: key);

  List<Ogrenci> ogrenciOlustur(int adet) {
    return List.generate(
        adet,
        (index) => Ogrenci(
            index + 1, "Ogrenci Adı:$index", "Ogrenci Soyadi:${index + 10}"));
  }

  @override
  Widget build(BuildContext context) {
    List<Ogrenci> tumOgrenciler = ogrenciOlustur(20);
    return ListView.separated(
        itemBuilder: (context, index) {
          Ogrenci ogrenci = tumOgrenciler[index];
          return ListTile(
            title: Text(ogrenci.id.toString()),
            subtitle: Text(ogrenci.isim),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
            thickness: 2,
            color: Colors.amber,
          );
        },
        itemCount: 20);
  }
}
