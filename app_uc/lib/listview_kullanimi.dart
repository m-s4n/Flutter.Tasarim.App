import 'package:flutter/material.dart';
import 'package:app_uc/entites/ogrenci.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimiPage extends StatelessWidget {
  const ListViewKullanimiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Örnekleri",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  Icerik({Key? key}) : super(key: key);

  final List<Ogrenci> tumOgrenciler = List.generate(
      5000, (index) => Ogrenci(index + 1, index + 20, "Ogrenci ${index + 1}"));

  List<ListTile> getListOgrenciler() {
    return tumOgrenciler
        .map((Ogrenci ogrenci) => ListTile(
              title: Text(ogrenci.isim),
              subtitle: Text(ogrenci.yas.toString()),
              leading: CircleAvatar(
                child: Text(ogrenci.id.toString()),
              ),
            ))
        .toList();
  }

  // listview kullanımı
  @override
  Widget build(BuildContext context) {
    // Her bir elemanda çalışır
    var sonuc = ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color:
                index % 2 == 0 ? Colors.amber.shade100 : Colors.purple.shade100,
            child: ListTile(
              onTap: () => debugPrint(tumOgrenciler[index].isim),
              title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].yas.toString()),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => (index + 1) % 4 == 0
            ? Divider(
                thickness: 2,
                color: Colors.greenAccent.shade100,
              )
            : const SizedBox(),
        itemCount: tumOgrenciler.length);

    var ozelList = ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        var ogrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0 ? Colors.amber.shade300 : Colors.red.shade200,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.amber;
              }
              EasyLoading.showToast("Tıklanan öğrenci:${ogrenci.isim}",
                  duration: const Duration(seconds: 5),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              uyariVer(context, ogrenci);
            },
            title: Text(ogrenci.isim),
            subtitle: Text(ogrenci.yas.toString()),
            leading: CircleAvatar(
              child: Text(ogrenci.id.toString()),
            ),
            trailing: const Icon(Icons.add_home_work_sharp),
          ),
        );
      },
    ));

    return ozelList;
  }

  void uyariVer(BuildContext context, Ogrenci ogrenci) {
    showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: Text(ogrenci.isim),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  ButtonBar(
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Bas1")),
                      TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.abc_outlined))
                    ],
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Tamam")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("İptal"))
            ],
          );
        });
  }
}
