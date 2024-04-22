import 'package:flutter/material.dart';
import 'package:tasarim_app/widgets/fragments/user_fragment.dart';

class KullanicilarFragment extends StatelessWidget {
  const KullanicilarFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(15),
        children: const [
          UserFragment(
              imagePath: 'assets/model1.jpeg',
              logoPath: 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          UserFragment(
              imagePath: 'assets/model2.jpeg',
              logoPath: 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          UserFragment(
              imagePath: 'assets/musti.jpg', logoPath: 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          UserFragment(
              imagePath: 'assets/model3.jpeg',
              logoPath: 'assets/chanellogo.jpg'),
          SizedBox(
            width: 25,
          ),
          UserFragment(
              imagePath: 'assets/model1.jpeg',
              logoPath: 'assets/chanellogo.jpg')
        ],
      ),
    );
  }
}
