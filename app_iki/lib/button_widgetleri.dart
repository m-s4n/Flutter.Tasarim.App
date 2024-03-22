import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Button Türleri",
          style: TextStyle(
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: const ButtonIcerik(),
    );
  }
}

class ButtonIcerik extends StatelessWidget {
  const ButtonIcerik({Key? key}) : super(key: key);

  void button1() {
    debugPrint("buton1");
  }

  void button2() {
    debugPrint("buton2");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            autofocus: true,
            onHover: (value) => debugPrint(value.toString()),
            statesController: MaterialStatesController(),
            child: const Text(
              "Bas Bana",
              style: TextStyle(color: Colors.amber),
            ),
          ),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
              child: const Icon(
                Icons.add_business_outlined,
                color: Colors.amber,
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(45)),
              onPressed: () {},
              child: const Icon(Icons.admin_panel_settings_sharp))
        ],
      ),
    );
  }
}
