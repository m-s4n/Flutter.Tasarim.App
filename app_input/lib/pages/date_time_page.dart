import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateTimePage extends StatelessWidget {
  const DateTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarih ve Saat İşlemleri"),
      ),
      body: _Icerik(),
    );
  }
}

class _Icerik extends StatefulWidget {
  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<_Icerik> {
  DateTime _secilenTarih = DateTime.now();
  TimeOfDay _secilenSaat = TimeOfDay.now();

  void _handleSelectDate(BuildContext context) async {
    final DateTime? tarih = await showDatePicker(
        cancelText: "İptal",
        confirmText: "Tamam",
        context: context,
        initialDate: DateTime(2024),
        firstDate: DateTime(2024),
        lastDate: DateTime(2024, 12, 20));

    if (tarih != null && tarih != _secilenTarih) {
      setState(() {
        _secilenTarih = tarih;
      });
    }
  }

  void _handleSelectTime(BuildContext context) async {
    final TimeOfDay? saat =
        await showTimePicker(context: context, initialTime: _secilenSaat);

    if (saat != null && saat != _secilenSaat) {
      setState(() {
        _secilenSaat = saat;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Seçilen Tarih: ${formatDate(_secilenTarih, [
                dd,
                '-',
                mm,
                '-',
                yyyy
              ])}",
          style: const TextStyle(fontSize: 25),
        ),
        ElevatedButton(
            onPressed: () => _handleSelectDate(context),
            child: const Text("Tarih Seç")),
        Text(
          "Seçilen Saat: ${_secilenSaat.format(context)}",
          style: const TextStyle(fontSize: 25),
        ),
        ElevatedButton(
            onPressed: () => _handleSelectTime(context),
            child: const Text("Saat Seç"))
      ],
    );
  }
}
