import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bookflix/main.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedindex = 0;

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
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 230, 176, 239),
        ),
        body: MyApp().Screenslist[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: onTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 225, 137, 240),
            unselectedItemColor: Colors.grey,
            selectedFontSize: 15,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedIconTheme: IconThemeData(size: 26),

            // selectedLabelStyle:
            //     TextStyle(color: Color.fromARGB(255, 196, 15, 228)),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
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
