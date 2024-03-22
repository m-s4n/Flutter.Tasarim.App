import 'package:flutter/material.dart';

class GlobalKeyPage extends StatelessWidget {
  final _icerikKey =
      GlobalKey<_SayacState>(); // Global Key nasıl tür veri tutacak belirtilir.
  // Hangi widget'a erişilecek ise direkt olarak o widget'a aktarılır.
  GlobalKeyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayac"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Butona basılma miktarı",
              style: TextStyle(fontSize: 25),
            ),
            _Sayac(
              key: _icerikKey,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Sayac widget'ın State'tine erişiyoruz.
          _icerikKey.currentState!._sayacAttir();
        },
      ),
    );
  }
}

class _Sayac extends StatefulWidget {
  const _Sayac({Key? key}) : super(key: key);
  @override
  _SayacState createState() => _SayacState();
}

class _SayacState extends State<_Sayac> {
  int _sayac = 0;

  // private değişen aynı dosyada etkilemez
  void _sayacAttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: const TextStyle(fontSize: 25),
    );
  }
}
