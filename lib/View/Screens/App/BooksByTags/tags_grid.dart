import 'package:bookflix/Utils/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  final Map<String, String> map = {
    'Mystery': 'assets/mystery.jpg',
    'Science Fiction': 'assets/scifi.jpg',
    'Fantasy': 'assets/fantasy.jpg',
    'Romance': 'assets/romance.jpg',
    'Thriller': 'assets/thriller.jpg',
    'Biography': 'assets/biography.jpg',
    'Self-Help': 'assets/self help.jpg',
    'Historical Fiction': 'assets/history.png',
    'History': 'assets/nonfic.jpg',
    'Science': 'assets/science.jpg',
    'Horror': 'assets/horror.jpg',
    'Poetry': 'assets/poetry.jpg',
    'Travel': 'assets/travel.jpg',
    'CookBooks': 'assets/cookbook.jpg',
    'Erotic': 'assets/youngadults.jpg',
    'Graphic Novel': 'assets/graphicNovels.jpg',
    'Philosophy': 'assets/philosophy.jpg',
    'Business': 'assets/business.jpg',
    'Psychology': 'assets/psychology.jpg',
    'Children Fiction': 'assets/childrenfiction.jpg'
  };

  @override
  Widget build(BuildContext context) {
    final tag = map.keys.toList();
    final images = map.values.toList();
    return GridView.builder(
      itemCount: tag.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // log('yamette');
            context.go('/search/booksByTags/${tag[index]}');
          },
          child: Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(.03.sw)),
              child: Stack(fit: StackFit.expand, children: [
                Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: EdgeInsets.all(.02.sw),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.black87, Colors.transparent])),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      tag[index],
                      style: AppFonts.bodyText,
                    ),
                  ),
                )
              ])),
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount: 2,
        crossAxisSpacing: 0.02.sw,
        mainAxisSpacing: 0.05.sw,
      ),
    );
  }
}
