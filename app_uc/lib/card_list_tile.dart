import 'package:flutter/material.dart';

class CartListTilePage extends StatelessWidget {
  const CartListTilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart List Tile"),
      ),
      body: const Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  const Icerik({Key? key}) : super(key: key);

  Widget createListTile(BuildContext context) {
    // listtile => cart yapısında ihtiyacımız olan şeyleri bize sunar.
    //leading cartın sol baş tarafı
    return const ListTile(
      leading: CircleAvatar(child: Icon(Icons.accessibility_new_outlined)),
      title: Text("Başlık kısmı"),
      subtitle: Text("Alt Başlık"),
      trailing: Icon(Icons.add_business),
    );
  }

  Column getKayit(BuildContext context) {
    return Column(
      children: [
        Card(
            color: Colors.blue,
            shadowColor: Colors.red,
            elevation: 12, // gölge genişliği
            child: createListTile(context)),
        const Divider(
          color: Colors.red,
          thickness: 1,
          height: 5,
          indent: 5, // ön kenarına kadar olan başluk
          endIndent: 5, // son kenardan olan boşluk
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: getDatalar(context),
    );
  }

  Column getDatalar(BuildContext context) {
    return Column(
      children: [
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
        getKayit(context),
      ], // kayıt ekrana sığmayınca hata verdi
    );
  }
}
