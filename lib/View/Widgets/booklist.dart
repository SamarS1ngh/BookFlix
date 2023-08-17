import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  const Booklist({super.key});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  List<String> bookimg = [
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView.builder(
            // padding: EdgeInsets.fromLTRB(10, 0, 10, 010),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: bookimg.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print('yamete kudsai');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      bookimg[index],
                      width: 180,
                      fit: BoxFit.fitHeight,
                      isAntiAlias: false,
                    ),
                  ),
                ),
              );
            }));
  }
}
