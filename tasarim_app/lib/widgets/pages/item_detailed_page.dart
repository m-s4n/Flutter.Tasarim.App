// ignore_for_file: unused_element
import 'package:flutter/material.dart';

class ItemDetailedPage extends StatelessWidget {
  final String img;
  const ItemDetailedPage({required this.img, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Icerik(img: img),
    );
  }
}

class _Icerik extends StatefulWidget {
  final String img;
  const _Icerik({required this.img, super.key});

  @override
  _IcerikState createState() => _IcerikState();
}

class _IcerikState extends State<_Icerik> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //resim
      Hero(
        tag: widget.img,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.img), fit: BoxFit.cover)),
        ),
      ),
      // detay
      Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.3)),
                                image: const DecorationImage(
                                    image: AssetImage('assets/dress.jpg'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 25, right: 16, left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'LAMINATED',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Louis vuitton',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width - 200,
                                child: const Text(
                                  'One button V-neck sling long-sleeved waist female stitching dress',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 5, bottom: 5, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$6500',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.brown,
                          onPressed: () {},
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      Positioned(
          left: 40,
          top: (MediaQuery.of(context).size.height / 2) - 100,
          child: Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black.withOpacity(0.4)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'LAMINATED',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15,
                )
              ],
            ),
          ))
    ]);
  }
}
