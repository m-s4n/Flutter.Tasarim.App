import 'package:app_uc/entites/ogrenci.dart';
import 'package:flutter/material.dart';

class GridViewOrnekPage extends StatelessWidget {
  const GridViewOrnekPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View Örnek")),
      body: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  Icerik({super.key});

  final List<Ogrenci> tumOgrenciler = List.generate(100,
      (index) => Ogrenci(index + 1, index + 10, "Ogrenci Adı:${index + 100}"));

  void selectedItem(Ogrenci ogrenci) {
    debugPrint("Ogrenci Adı:${ogrenci.isim}");
  }

  Widget listeOlustur(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // tek tıklama
            selectedItem(tumOgrenciler[index]);
            debugPrint("tek tıklama");
          },
          onLongPress: () {
            // uzun basma
            debugPrint("uzun basma");
          },
          onDoubleTap: () {
            // çift tıklama
            debugPrint("çift tıklama");
          },
          onHorizontalDragUpdate: (details) {
            debugPrint("yalnızca yatay sürükleme");
          },
          child: urunShow(tumOgrenciler[index]),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  Widget urunShow(Ogrenci ogrenci) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.amberAccent,
          image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage("assets/images/musti.jpg")),
          shape: BoxShape.circle),
      height: 150,
      width: 200,
      constraints: const BoxConstraints(maxHeight: 250, maxWidth: 250),
      child: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(ogrenci.isim),
            CircleAvatar(
              child: Text(ogrenci.id.toString()),
            ),
            Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                ogrenci.yas.toString(),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return listeOlustur(context);
  }
}
