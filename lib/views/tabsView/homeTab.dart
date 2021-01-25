import 'package:flutter/material.dart';
import 'package:levelup/views/SignIn_SignUp/SignInScreen.dart';
import 'package:levelup/widgets/HomeBanner.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Image.asset(
          'assets/icon.png',
          width: 140,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignInScreen().id);
            },
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(
              homeBannerImage: 'assets/images/homebanner1.png',
              homeBannerText: 'Instructional Videos & Online Programs',
            ),
            HomeBanner(
              homeBannerImage: 'assets/images/homebanner2.png',
              homeBannerText: 'Equipment and Apparel',
            ),
            HomeBanner(
              homeBannerImage: 'assets/images/homebanner3.png',
              homeBannerText: 'LevelUp 3-Days Camps',
            ),
            HomeBanner(
              homeBannerImage: 'assets/images/homebanner1.png',
              homeBannerText: 'Instructional Videos & Online Programs',
            ),
            HomeBanner(
              homeBannerImage: 'assets/images/homebanner2.png',
              homeBannerText: 'Equipment and Apparel',
            ),
          ],
        ),
      ),
    );
  }
}
