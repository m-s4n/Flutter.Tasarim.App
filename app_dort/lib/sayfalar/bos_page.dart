import 'package:flutter/material.dart';

class BosPage extends StatelessWidget {
  const BosPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/");
            },
            child: const Text("Bu Sayfa Boş Sayfa"))
      ],
    );
  }
}
