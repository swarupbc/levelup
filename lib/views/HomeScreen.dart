import 'package:flutter/material.dart';
import 'package:levelup/views/DuetScreen/DuetScreen.dart';
import 'package:levelup/views/ExistingWebsite/ExistingWebsiteScreen.dart';
import 'package:levelup/views/existingProduct/ExistingProductScreen.dart';
import 'package:levelup/views/tabsView/homeTab.dart';
import 'package:levelup/views/videosPage/videosScreen.dart';

class HomeScreen extends StatefulWidget {
  final String id = '/';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    HomeTab(),
    DuetScreen(),
    VideosScreen(),
    WebsiteProduct(),
    ExistingWebScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.nature_people),
              backgroundColor: Colors.green,
              label: 'Duets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam_rounded),
              backgroundColor: Colors.green,
              label: 'Videos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_tennis),
              backgroundColor: Colors.green,
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Text(
                'UP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              label: 'Camps',
            )
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
