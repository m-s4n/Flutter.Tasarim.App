import 'package:flutter/material.dart';

class TextFieldOrnekPage extends StatelessWidget {
  const TextFieldOrnekPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Örneği"),
      ),
      body: const _Icerik(),
    );
  }
}

class _Icerik extends StatefulWidget {
  const _Icerik();

  @override
  State<_Icerik> createState() => _IcerikState();
}

class _IcerikState extends State<_Icerik> {
  late final TextEditingController _textController;
  late final FocusNode _focusNode;
  int _maxLine = 5;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: "Başlangıç Değeri");
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocus);
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
    _focusNode.removeListener(_handleFocus);
    _focusNode.dispose();
  }

  void _handleFocus() {
    if (_focusNode.hasFocus) {
      setState(() {
        _maxLine = 10;
      });
    } else {
      setState(() {
        _maxLine = 5;
      });
    }
  }

  void _handleTextChange(String value) {
    // imleci ona alır
    setState(() {
      _textController.value = TextEditingValue(
          text: value,
          selection: TextSelection.collapsed(offset: value.length));
    });
  }

  void _handleSubmitText(String value) {
    setState(() {
      _textController.clear();
    });
    debugPrint("action butonuna tıklandı");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.go, // action button
          onSubmitted: _handleSubmitText,
          controller: _textController,
          onChanged: _handleTextChange,
          focusNode: _focusNode,
          maxLines: _maxLine,
        ),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(_focusNode);
            },
            child: const Text("Odaklan")),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
            },
            child: const Text("Odak Kaldır"))
      ],
    );
  }
}
