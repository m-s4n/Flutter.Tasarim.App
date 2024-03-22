import 'package:flutter/material.dart';

class SayacliPage extends StatelessWidget {
  const SayacliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Icerik(yas: 32),
    );
  }
}

class Icerik extends StatefulWidget {
  final int yas;
  const Icerik({required this.yas, super.key});

  @override
  IcerikState createState() => IcerikState();
}

class IcerikState extends State<Icerik> {
  int sayac = 0;

  void sayacArttir() {
    debugPrint("sayac arttırldı");
    sayac++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (sayac == 10) {
      debugPrint("sayac 10 oldu");
    }
    debugPrint("build tetiklendi");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sayac: ${sayac.toString()}",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).dividerColor),
          ),
          ElevatedButton(
            onPressed: sayacArttir,
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
