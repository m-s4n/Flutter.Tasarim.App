import 'package:flutter/material.dart';

class BannerFragment extends StatelessWidget {
  final String _img1 = 'assets/modelgrid1.jpeg';
  final String _img2 = 'assets/modelgrid2.jpeg';
  final String _img3 = 'assets/modelgrid3.jpeg';
  const BannerFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        child: Container(
          height: 500,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/model1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daisy',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '34 mins ago',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 22,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'This official website features a ribbed knit zipper jacket that is'
                'modern and stylish. It looks very temparament and is recommend to friends',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/detay', arguments: _img1);
                    },
                    child: Hero(
                      tag: _img1,
                      child: Container(
                        height: 200,
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(_img1), fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('/detay', arguments: _img2);
                        },
                        child: Hero(
                          tag: _img2,
                          child: Container(
                            height: 95,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(_img2),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('/detay', arguments: _img3);
                        },
                        child: Hero(
                          tag: _img3,
                          child: Container(
                            height: 95,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(_img3),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2)),
                    child: const Center(
                      child: Text(
                        '# Louis vuitton',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2)),
                    child: const Center(
                      child: Text(
                        '# Chloe',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50,
                color: Colors.grey.withOpacity(0.1),
                thickness: 1,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '1.7k',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.brown.withOpacity(0.2)),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.2),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '325',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.brown.withOpacity(0.2)),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '2.3k',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.brown.withOpacity(0.2)),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
