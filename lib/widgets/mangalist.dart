import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class mangalist extends StatefulWidget {
  const mangalist({super.key});

  @override
  State<mangalist> createState() => _mangalistState();
}

class _mangalistState extends State<mangalist> {
  List<String> _mangaimg = [
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg',
    'assets/preview img.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: ListView.builder(
            // padding: EdgeInsets.fromLTRB(10, 0, 10, 010),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _mangaimg.length,
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
                      _mangaimg[index],
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
