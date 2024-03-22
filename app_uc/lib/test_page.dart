import 'package:flutter/material.dart';
import 'package:app_uc/entites/ogrenci.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const []),
      body: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  Icerik({super.key});

  final List<Ogrenci> tumOgrenciler = List.generate(
      100, (index) => Ogrenci(index + 10, index + 100, "Ogrenci Adı$index"));

  Widget listeOgesi(BuildContext context, int index) {
    Ogrenci ogrenci = tumOgrenciler[index];
    return Card(
      child: ListTile(
        onTap: () {
          debugPrint("Seçilen öğrenci: ${ogrenci.isim}");
        },
        title: Text("Öğrenci Id:${ogrenci.id}"),
        subtitle: Text(ogrenci.isim),
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/car.jpg"),
          radius: 50,
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.ad_units_rounded),
        ),
      ),
    );
  }

  Widget listeAyirici(BuildContext context, int index) {
    return Divider(
      color: Colors.amber[100],
      thickness: 5,
      height: 10,
    );
  }

  Widget bilgiVer(Ogrenci ogrenci) {
    return AlertDialog(
      title: Text("Başlık"),
      elevation: 100,
      backgroundColor: Colors.amber,
      alignment: Alignment.bottomCenter,
      icon: Icon(Icons.add_ic_call_outlined),
      actions: [
        ButtonBar(
          children: [
            ElevatedButton(onPressed: () {}, child: Icon(Icons.abc_sharp)),
            OutlinedButton(
                onPressed: () {}, child: Icon(Icons.access_time_rounded))
          ],
        )
      ],
      content: Card(
        child: ListTile(
          title: Text(ogrenci.isim),
          subtitle: Text(ogrenci.id.toString()),
          leading: const CircleAvatar(
              radius: 25, backgroundImage: AssetImage("assets/images/car.jpg")),
        ),
      ),
    );
  }

  List<Widget> tumListeElemanlari(BuildContext context) {
    return tumOgrenciler.map<Widget>((Ogrenci ogrenci) {
      return Card(
        child: ListTile(
          onTap: () {
            debugPrint("Seçilen öğrenci: ${ogrenci.isim}");
            EasyLoading.showToast("Merhaba");
            showDialog(
              context: context,
              builder: (context) {
                return bilgiVer(ogrenci);
              },
            );
          },
          tileColor: Colors.amber[100],
          title: Text("Öğrenci Id:${ogrenci.id}"),
          subtitle: Text(ogrenci.isim),
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/car.jpg"),
            radius: 50,
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.ad_units_rounded),
          ),
        ),
      );
    }).toList();
  }

  final String foti =
      "https://images.bursadabugun.com/galeriler/2016/01/13/25152-kizi-manken-oldu-56960320759ba.jpg";

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverAppBar(
            title: Text("Sliver App Bar"),
            backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
                background: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/car.jpg"),
            )),
            centerTitle: true,
            leading: Text("Leading"),
            expandedHeight: 150,
            floating: true,
            pinned: true,
          ),
        ),
        SliverAnimatedGrid(
            initialItemCount: tumOgrenciler.length,
            itemBuilder: (context, index, animation) {
              return Container(
                height: 100,
                margin: EdgeInsets.all(10),
                color: Colors.amber,
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2))
      ],
    );
  }
}
