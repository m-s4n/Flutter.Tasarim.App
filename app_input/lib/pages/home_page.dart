import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputlar"),
      ),
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
              Navigator.pushNamed(context, "/text-field");
            },
            child: const Text("TextField Örneği")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/text-form-field");
            },
            child: const Text("TextFormField Örneği")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/sayac");
            },
            child: const Text("GlobalKey Örneği")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/register");
            },
            child: const Text("Form Elemanları Örneği")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/tarih-islemleri");
            },
            child: const Text("Tarih ve Saat Örneği")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/stepper-register");
            },
            child: const Text("Stepper Örneği"))
      ],
    );
  }
}
