import 'package:app_uc/entites/ogrenci.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as Matematik;

class CustomScrollViewPage extends StatelessWidget {
  const CustomScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Scroll View Örnek"),
      ),
      body: Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  Icerik({Key? key}) : super(key: key);

  List<Widget> ozelListe() {
    return [
      Container(
        height: 50,
        width: 100,
        color: Colors.amber[100],
        child: const Center(
            child: Text(
          "Sliver List",
          style: TextStyle(fontSize: 20),
        )),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[200],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[300],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[400],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[500],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[600],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber[700],
        child: const Center(
            child: Text("Sliver List", style: TextStyle(fontSize: 20))),
      )
    ];
  }

  final List<Ogrenci> tumOgrenciler = List.generate(100,
      (index) => Ogrenci(index + 1, index + 10, "Oğrenci Adı:${index + 1}"));

  Widget gorselAlan() {
    return Container(
      height: 500,
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: _rastgeleRenk(),
                    child: const Text(
                      "elma1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: _rastgeleRenk(),
                    child: const Text(
                      "elma1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: _rastgeleRenk(),
                    child: const Text(
                      "elma1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: _rastgeleRenk(),
                    child: const Text(
                      "elma1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: _rastgeleRenk(),
                    child: const Text(
                      "elma1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[100],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[200],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[300],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[400],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[500],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[100],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[200],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[300],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[400],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[500],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[100],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[200],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[300],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[400],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber[500],
                  child: const Text(
                    "elma1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _rastgeleRenk() {
    return Color.fromARGB(
        Matematik.Random().nextInt(255),
        Matematik.Random().nextInt(255),
        Matematik.Random().nextInt(255),
        Matematik.Random().nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          title: const Text("Sliver App Bar"),
          backgroundColor: Colors.red,
          expandedHeight: 200, // en geniş
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text("Başlık"),
              centerTitle: true,
              background: Image.asset(
                "assets/images/car.jpg",
                fit: BoxFit.fill,
              )),
          floating: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarColor: Colors.amber),
        ),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((context, index) {
              Ogrenci ogrenci = tumOgrenciler[index];

              return Container(
                color: Colors.pinkAccent[100 * (((index) % 8) + 1)],
                child: Center(
                  child: Text(
                    ogrenci.isim,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                ),
              );
            }),
            itemExtent: 100),
        SliverList(
            delegate: SliverChildListDelegate(
                tumOgrenciler.map<Container>((Ogrenci ogrenci) {
          return Container(
            height: 100,
            width: 100,
            child: Center(
              child: Text(ogrenci.isim,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          );
        }).toList())),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            Ogrenci ogrenci = tumOgrenciler[index];
            return Container(
              height: 100,
              width: 100,
              color: Colors.purple[100 * ((index + 1) % 8)],
              child: Center(
                child: Text(
                  ogrenci.isim,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }, childCount: tumOgrenciler.length),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              Ogrenci ogrenci = tumOgrenciler[index];
              return Container(
                height: 100,
                width: 100,
                color: Colors.green[100 * (((index) % 8) + 1)],
                child: Center(
                  child: Text(
                    ogrenci.isim,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }, childCount: tumOgrenciler.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2)),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverToBoxAdapter(
            child: gorselAlan(),
          ),
        ), // Sliver'a padding verir
        SliverFixedExtentList(
          delegate: SliverChildListDelegate(ozelListe()),
          itemExtent: 50,
        )
      ],
    );
  }
}
