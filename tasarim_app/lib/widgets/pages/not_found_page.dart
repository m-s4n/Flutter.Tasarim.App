import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404'),
      ),
      body: const Center(
        child: Text(
          'Sayfa Bulunamadı!',
          style: TextStyle(fontSize: 30, color: Colors.amber),
        ),
      ),
    );
  }
}
