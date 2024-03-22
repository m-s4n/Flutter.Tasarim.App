import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class StepperRegisterPage extends StatelessWidget {
  const StepperRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Örneği"),
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
  int _currentStep = 0;
  String? _isim, _mail, _sifre;
  bool _isError = false;
  late final GlobalKey<FormFieldState> _stepKey0;
  late final GlobalKey<FormFieldState> _stepKey1;
  late final GlobalKey<FormFieldState> _stepKey2;

  @override
  void initState() {
    super.initState();
    _stepKey0 = GlobalKey<FormFieldState>();
    _stepKey1 = GlobalKey<FormFieldState>();
    _stepKey2 = GlobalKey<FormFieldState>();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Kullanıcı Adı: $_isim"),
          Text("Mail: $_mail"),
          Text("Şifre: $_sifre"),
          Stepper(
            controlsBuilder: (context, details) {
              return ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: _continueButton,
                      child: const Text("İleri")),
                  ElevatedButton(
                      onPressed: _previousButton,
                      style: ButtonStyle(backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.amber;
                        }
                        return Colors.red;
                      })),
                      child: const Text("Geri"))
                ],
              );
            },
            steps: _steps(),
            currentStep: _currentStep,
            type: StepperType.vertical,
            //onStepContinue: _continueButton,
            //onStepCancel: _previousButton
            //onStepTapped: (value) => setState(() => _currentStep = value),
          ),
        ],
      ),
    );
  }

  void _onSaveIsim(String? value) {
    _isim = value;
  }

  void _onSavedMail(String? value) {
    _mail = value;
  }

  void _onSavedSifre(String? value) {
    _sifre = value;
  }

  void _continueButton() {
    switch (_currentStep) {
      case 0:
        if (_stepKey0.currentState!.validate()) {
          _stepKey0.currentState!.save();
          _isError = false;
          if (_currentStep < _steps().length - 1) {
            setState(() {
              _currentStep += 1;
            });
          }
        } else {
          _isError = true;
        }
        break;

      case 1:
        if (_stepKey1.currentState!.validate()) {
          _stepKey1.currentState!.save();
          _isError = false;
          if (_currentStep < _steps().length - 1) {
            setState(() {
              _currentStep += 1;
            });
          }
        } else {
          _isError = true;
        }
        break;

      case 2:
        if (_stepKey2.currentState!.validate()) {
          _stepKey2.currentState!.save();
          _isError = false;
          if (_currentStep < _steps().length - 1) {
            setState(() {
              _currentStep += 1;
            });
          } else {
            setState(() {});
          }
        } else {
          _isError = true;
        }
        break;
    }
  }

  void _previousButton() {
    switch (_currentStep) {
      case 0:
        if (!_isError && _currentStep > 0) {
          setState(() {
            _currentStep -= 1;
          });
        }
        break;
      case 1:
        if (!_isError && _currentStep > 0) {
          setState(() {
            _currentStep -= 1;
          });
        }
        break;

      case 2:
        if (!_isError && _currentStep > 0) {
          setState(() {
            _currentStep -= 1;
          });
        }
        break;
    }
  }

  StepState _stepStateArrange(int index) {
    if (_currentStep == index && _isError) {
      return StepState.error;
    } else if (_currentStep == index) {
      return StepState.editing;
    } else if (_currentStep > index) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  List<Step> _steps() {
    return <Step>[
      Step(
          subtitle: const Text("Birinci Adım"),
          state: _stepStateArrange(0),
          isActive: _currentStep == 0,
          title: const Text("Kullanıcı Adı"),
          content: TextFormField(
            key: _stepKey0,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            ),
            onSaved: _onSaveIsim,
            validator: (value) {
              if (value == null || value.length < 5) {
                return 'Düzgün kullanıcı adı giriniz';
              }
              return null;
            },
          )),
      Step(
        title: const Text("Mail"),
        content: TextFormField(
          key: _stepKey1,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: _onSavedMail,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            labelText: "Mail",
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (!EmailValidator.validate(value ?? '')) {
              return "Düzgün mail giriniz";
            }

            return null;
          },
        ),
        subtitle: const Text("İkinci Adım"),
        state: _stepStateArrange(1),
        isActive: _currentStep == 1,
      ),
      Step(
        title: const Text("Şifre"),
        content: TextFormField(
          key: _stepKey2,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: _onSavedSifre,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            labelText: "Şifre",
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.length < 6) {
              return "Düzgün şifre giriniz";
            }

            return null;
          },
        ),
        subtitle: const Text("Üçüncü Adım"),
        state: _stepStateArrange(2),
        isActive: _currentStep == 2,
      )
    ];
  }
}
