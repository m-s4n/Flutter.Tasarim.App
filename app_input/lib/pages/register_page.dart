import 'package:flutter/material.dart';
import 'package:app_input/models/unvan.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Kullanımı"),
      ),
      body: const _Icerik(),
    );
  }
}

class _Icerik extends StatelessWidget {
  const _Icerik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [const Text("Kayıt Olun"), _KayitForm()],
      ),
    );
  }
}

class _KayitForm extends StatefulWidget {
  @override
  _KayitFormState createState() => _KayitFormState();
}

class _KayitFormState extends State<_KayitForm> {
  String? _ad;
  bool _isCocukDurum = false;
  bool _isPasaportDurum = false;
  String? _cinsiyet;
  int? _sehir;
  bool _isAydinlik = false;
  bool _isDogru = false;
  double _yas = 0;
  int? _unvan;
  late final TextEditingController _adController;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final List<Unvan> _tumUnvanlar = [
    const Unvan(0, "Boş"),
    const Unvan(10, "Mühendis"),
    const Unvan(20, "Doktor"),
    const Unvan(30, "Ekonomist")
  ];

  late final List<DropdownMenuItem<int>> _menuUnvanlar;

  @override
  void initState() {
    super.initState();
    _adController = TextEditingController();
    _menuUnvanlar = _tumUnvanlar
        .map<DropdownMenuItem<int>>((unvan) => DropdownMenuItem(
              value: unvan.id,
              child: Text(unvan.ad),
            ))
        .toList();
  }

  @override
  void dispose() {
    super.dispose();

    _adController.dispose();
  }

  void _handleSubmitForm() {
    if (_form.currentState!.validate()) {
      _form.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Column(
        children: [
          Text("Ad: $_ad"),
          Text("Çocuk Durumu: ${_isCocukDurum ? 'Var' : 'Yok'}"),
          Text("Pasaport Durumu: ${_isPasaportDurum ? 'Var' : 'Yok'}"),
          Text("Cinsiyet: $_cinsiyet"),
          Text("Şehir: $_sehir"),
          Text("Işık: ${_isAydinlik ? 'Açık' : 'Kapalı'}"),
          Text("Doğru: ${_isDogru ? 'Event' : 'Hayır'}"),
          Text("Yaş: $_yas"),
          Text("Unvan: $_unvan")
        ],
      )));
    }
  }

  void _handleIsCocukDurum(bool? value) {
    setState(() {
      _isCocukDurum = value!;
    });
  }

  void _handleIsPasaportDurum(bool? value) {
    setState(() {
      _isPasaportDurum = value!;
    });
  }

  void _handleCinsiyet(String? value) {
    setState(() {
      _cinsiyet = value;
    });
  }

  void _handleSehir(int? value) {
    setState(() {
      _sehir = value;
    });
  }

  void _handleIsAydinlik(bool value) {
    setState(() {
      _isAydinlik = value;
    });
  }

  void _handleIsDogru(bool value) {
    setState(() {
      _isDogru = value;
    });
  }

  void _handleYas(double value) {
    setState(() {
      _yas = value;
    });
  }

  void _handleUnvan(int? value) {
    setState(() {
      _unvan = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _form,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _isCocukDurum,
                  onChanged: _handleIsCocukDurum,
                  activeColor: Colors.amber,
                  checkColor: Colors.deepPurple,
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.blue;
                    } else {
                      return Colors.cyan;
                    }
                  }),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: const BorderSide(color: Colors.teal, width: 2),
                ),
                const Text("Çocuğum Var")
              ],
            ),
            CheckboxListTile(
                title: const Text("Pasaportum var"),
                subtitle: const Text("Türk Pasaportu olanlar işaretleyecek!"),
                activeColor: Colors.amber,
                checkColor: Colors.deepPurple,
                controlAffinity: ListTileControlAffinity.leading,
                secondary: const Icon(Icons.access_alarm),
                value: _isPasaportDurum,
                onChanged: _handleIsPasaportDurum),
            Row(
              children: [
                Radio<String>(
                    value: 'Erkek',
                    groupValue: _cinsiyet,
                    activeColor: Colors.amber,
                    toggleable: true,
                    onChanged: _handleCinsiyet),
                const Text("Erkek"),
                Radio<String>(
                    value: 'Kadin',
                    groupValue: _cinsiyet,
                    activeColor: Colors.pink,
                    toggleable: true,
                    onChanged: _handleCinsiyet),
                const Text("Kadın"),
              ],
            ),
            RadioListTile<int>(
              value: 6,
              groupValue: _sehir,
              onChanged: _handleSehir,
              title: const Text("Ankara"),
              activeColor: Colors.green,
              subtitle: const Text("Başkent"),
              toggleable: true,
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: const Icon(Icons.photo_size_select_large_sharp),
            ),
            RadioListTile<int>(
              value: 45,
              groupValue: _sehir,
              onChanged: _handleSehir,
              title: const Text("Manisa"),
              activeColor: Colors.purple,
              subtitle: const Text("Eğenin İncisi"),
              toggleable: true,
              secondary: const Icon(Icons.album_rounded),
            ),
            Row(
              children: [
                const Text("Işık"),
                Switch(
                  value: _isAydinlik,
                  onChanged: _handleIsAydinlik,
                ),
              ],
            ),
            Row(
              children: [
                const Text("Yaşınız"),
                Slider(
                  value: _yas,
                  onChanged: _handleYas,
                  activeColor: Colors.amber,
                  inactiveColor: Colors.grey,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _yas.round().toString(),
                )
              ],
            ),
            SwitchListTile(
                value: _isDogru,
                onChanged: _handleIsDogru,
                activeColor: Colors.amber,
                inactiveThumbColor: Colors.blue,
                inactiveTrackColor: Colors.pink,
                controlAffinity: ListTileControlAffinity.leading,
                secondary: const Icon(Icons.access_alarm),
                title: const Text("Doğru")),
            DropdownButton(
              items: _menuUnvanlar,
              underline:
                  const Divider(color: Colors.amber, thickness: 2, height: 2),
              isExpanded: true,
              iconSize: 25,
              onChanged: _handleUnvan,
              value: _unvan,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
              hint: const Text(
                "Unvan Seçiniz",
                style: TextStyle(fontSize: 15, color: Colors.amber),
              ),
              icon: const Icon(Icons.add_chart_rounded),
            ),
            DropdownButtonFormField<int>(
                validator: (value) {
                  if (value == 0) {
                    return "Lütfen düzgün seçiniz";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  setState(() {
                    _unvan = newValue;
                  });
                },
                items: _menuUnvanlar,
                onChanged: _handleUnvan,
                icon: const Icon(Icons.ac_unit_rounded)),
            ElevatedButton(
                onPressed: _handleSubmitForm, child: const Text("Kaydet"))
          ],
        ));
  }
}
