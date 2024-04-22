import 'package:flutter/material.dart';

class UserFragment extends StatelessWidget {
  final String imagePath;
  final String logoPath;
  const UserFragment(
      {required this.imagePath, required this.logoPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage(logoPath))),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.brown),
            child: const Center(
              child: Text(
                'Follow',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ))
      ],
    );
  }
}
