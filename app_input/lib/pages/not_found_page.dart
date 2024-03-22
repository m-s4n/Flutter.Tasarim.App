import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

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
    return const Center(
      child: Text("Sayfa Bulunamadı!"),
    );
  }
}
