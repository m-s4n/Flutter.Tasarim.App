import 'package:flutter/material.dart';

class PopupButtonPage extends StatelessWidget {
  const PopupButtonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Popup Butonu",
          style: TextStyle(
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.w900),
        ),
        actions: const [PopupButtonIcerik()],
      ),
      body: const PopupButtonIcerik(),
    );
  }
}

class PopupButtonIcerik extends StatefulWidget {
  const PopupButtonIcerik({Key? key}) : super(key: key);

  @override
  PopupButtonIcerikState createState() => PopupButtonIcerikState();
}

class PopupButtonIcerikState extends State<PopupButtonIcerik> {
  int? secilenDeger;
  void onSelectedHandle(int? value) {
    setState(() {
      secilenDeger = value;
    });
  }

  Widget ozelButton(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return <PopupMenuEntry<int>>[
          const PopupMenuItem<int>(
            value: 1,
            child: Text('Manisa'),
          ),
          const PopupMenuItem<int>(
            value: 2,
            child: Text('Ankara'),
          ),
          const PopupMenuItem<int>(
            value: 3,
            child: Text('İzmir'),
          ),
        ];
      },
      onSelected: onSelectedHandle,
      icon: const Icon(Icons.add_a_photo_rounded),
      tooltip: "Ben menüyüm beni seç",
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build metodu state değiştiğinde tetiklendi");
    // popup menü
    Widget menuWidget = PopupMenuButton<int>(
      itemBuilder: (context) => <PopupMenuEntry<int>>[
        const PopupMenuItem<int>(
          value: 1,
          child: Text('Birinci Öğe'),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Text('İkinci Öğe'),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Text('Üçüncü Öğe'),
        ),
      ],
      onSelected: onSelectedHandle,
    );

    // popup menu
    return menuWidget;
  }
}
