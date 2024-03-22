import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldPage extends StatelessWidget {
  const TextFormFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form Field"),
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
  final _form = GlobalKey<FormState>();
  String _email = '', _sifre = '', _username = '';

  String? kullaniciAdiValidator(String? value) {
    if (value!.length < 4) {
      return "En az 4 karakter olmalıdır";
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'E-Mail boş olamaz';
    } else if (!EmailValidator.validate(value)) {
      return "Yanlış E-Mail girdiniz";
    }
    return null;
  }

  void _onSubmitForm() {
    if (_form.currentState!.validate()) {
      _form.currentState!.save(); //FormField'lardaki onSave tetiklenir.
      String result = " username:$_username \n email:$_email \n şifre:$_sifre";
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(result)));
      _form.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _form, // form'a key üzerinden erişilir.
          autovalidateMode: AutovalidateMode
              .always, // FormField'ların validator'lerini otomatik çalıştırır.(Her veri girişinde)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                onSaved: (value) {
                  _username = value!;
                },
                keyboardType: TextInputType.text,
                validator: kullaniciAdiValidator,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                    labelStyle: TextStyle(color: Colors.amber),
                    errorStyle: TextStyle(color: Colors.green)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  _email = value!;
                },
                keyboardType: TextInputType.emailAddress,
                validator: emailValidator,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(color: Colors.amber)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  _sifre = value!;
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                    labelStyle: TextStyle(color: Colors.amber)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _onSubmitForm, child: const Text("Kaydet"))
            ],
          ),
        ),
      ),
    );
  }
}
