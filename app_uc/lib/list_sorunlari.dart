import 'package:flutter/material.dart';

class SorunlarPage extends StatelessWidget {
  const SorunlarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste Sorunları"),
      ),
      body: const Icerik(),
    );
  }
}

class Icerik extends StatelessWidget {
  const Icerik({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 50,
                width: 200,
                color: Colors.amber.shade200,
                child: const Text("Başlangıç"),
              ),
              Container(
                height: 50,
                width: 200,
                color: Colors.amber,
                child: const Text("bitiş",
                    textScaleFactor: BorderSide.strokeAlignOutside),
              ),
              Container(
                height: 50,
                width: 200,
                color: Colors.amber.shade200,
                child: const Text("Başlangıç"),
              ),
              Container(
                height: 50,
                width: 200,
                color: Colors.amber,
                child: const Text("bitiş",
                    textScaleFactor: BorderSide.strokeAlignOutside),
              )
            ],
          ),
        )
      ],
    );
  }
}
