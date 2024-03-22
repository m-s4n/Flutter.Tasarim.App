import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ana Sayfa")),
      body: const Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  const Icerik({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Harf("D", Colors.amber.shade100),
            Harf("E", Colors.blue.shade200),
            Harf("R", Colors.blue.shade300),
            Harf("S", Colors.blue.shade400),
            Harf("L", Colors.blue.shade500),
            Harf("E", Colors.blue.shade600),
            Harf("R", Colors.blue.shade700),
            Harf("İ", Colors.blue.shade800),
          ],
        ),
        Harf("A", Colors.blue.shade100),
        Harf("R", Colors.blue.shade200),
        Harf("T", Colors.blue.shade300),
      ],
    );
  }
}

class Harf extends StatelessWidget {
  final String harf;
  final Color renk;
  const Harf(this.harf, this.renk, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      color: renk,
      child: Text(
        harf,
        style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
      ),
    );
  }
}
