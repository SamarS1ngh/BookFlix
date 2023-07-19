import 'package:bookflix/Screens/home.dart';
import 'package:bookflix/Screens/profile.dart';
import 'package:bookflix/Screens/saved.dart';
import 'package:bookflix/Screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homepagewithbottomnavbar extends StatefulWidget {
  const homepagewithbottomnavbar({super.key});

  @override
  State<homepagewithbottomnavbar> createState() =>
      _homepagewithbottomnavbarState();
}

class _homepagewithbottomnavbarState extends State<homepagewithbottomnavbar> {
  int selectedindex = 0;

  List<Widget> list = [
    MyHomePage(),
    Saved(),
    Search(),
    profile(),
  ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BookFlix',
            style: TextStyle(color: Color.fromARGB(255, 230, 155, 243)),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: list.elementAt(selectedindex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: onTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 174, 40, 198),
            unselectedItemColor: Colors.grey,
            selectedFontSize: 15,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedIconTheme: IconThemeData(size: 26),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 28,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    size: 28,
                  ),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                    size: 28,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 28,
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
