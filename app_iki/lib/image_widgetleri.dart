import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İmage Page"),
      ),
      body: const ImageIcerik(),
    );
  }
}

class ImageIcerik extends StatelessWidget {
  const ImageIcerik({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IntrinsicWidth(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Image.asset("assets/images/musti.jpg"),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    child: const Image(
                      image: AssetImage("assets/images/car.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.blue,
                      child: const Placeholder(
                        color: Colors.deepOrange,
                        fallbackHeight: 250,
                        fallbackWidth: 250,
                        strokeWidth: 2,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
