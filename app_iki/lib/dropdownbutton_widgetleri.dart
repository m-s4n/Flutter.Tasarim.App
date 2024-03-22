import 'package:flutter/material.dart';

class DropDownButtonPage extends StatelessWidget {
  const DropDownButtonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DropDownButton Türleri",
          style: TextStyle(
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
      body: const DropDownButtonIcerik(),
    );
  }
}

class DropDownButtonIcerik extends StatefulWidget {
  const DropDownButtonIcerik({Key? key}) : super(key: key);

  @override
  DropDownButtonIcerikState createState() => DropDownButtonIcerikState();
}

class DropDownButtonIcerikState extends State<DropDownButtonIcerik> {
  String? _selectedValue;
  void onSelectHandle(String? value) {
    debugPrint(value);
    setState(() {
      _selectedValue = value;
    });
  }

  var secenekler = <String>['One', 'Two', 'Three', 'Four'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    debugPrint("state değiştiğinde build her seferinde tetiklenir");

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            hint: const Text("Bir Şehir Seçiniz!"),
            icon: const Icon(Icons.ac_unit),
            style: const TextStyle(color: Colors.amber),
            underline: Container(
              height: 4,
              color: Colors.amber,
            ),
            iconSize: 25,
            items: secenekler,
            onChanged: onSelectHandle,
            value: _selectedValue,
          )
        ],
      ),
    );
  }
}
