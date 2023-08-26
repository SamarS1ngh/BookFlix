// ignore_for_file: camel_case_types
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/View/Screens/HomePage/home.dart';
import 'package:bookflix/View/Screens/Profile/profile.dart';
import 'package:bookflix/View/Screens/Saved/saved.dart';
import 'package:flutter/material.dart';

class homepagewithbottomnavbar extends StatefulWidget {
  const homepagewithbottomnavbar({super.key});

  @override
  State<homepagewithbottomnavbar> createState() =>
      _homepagewithbottomnavbarState();
}

class _homepagewithbottomnavbarState extends State<homepagewithbottomnavbar> {
  int selectedindex = 0;

  List<Widget> list = [
    const MyHomePage(),
    const Saved(),
    const profile(),
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
        body: list.elementAt(selectedindex),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.backgroundColor,
            currentIndex: selectedindex,
            onTap: onTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: const Color(0xFF9E9E9E),
            selectedFontSize: 15,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedIconTheme: const IconThemeData(size: 26),
            items: const [
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
                    Icons.person_2_outlined,
                    size: 28,
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
