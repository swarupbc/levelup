import 'package:flutter/material.dart';
import 'package:levelup/views/CampaignPage/CampaignPage.dart';
import 'package:levelup/views/HomeScreen.dart';
import 'package:levelup/views/SignIn_SignUp/SignInScreen.dart';
import 'package:levelup/views/SignIn_SignUp/SignUpScreen.dart';
import 'package:levelup/views/courseHome/courseHome.dart';
import 'package:levelup/views/coursePages/CourseDetails.dart';
import 'package:levelup/views/coursePages/afterPurchase.dart';
import 'package:levelup/views/profile/ProfileScreen,dart.dart';
import 'package:levelup/views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Level Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen().id,
      routes: {
        SplashScreen().id: (context) => SplashScreen(),
        HomeScreen().id: (context) => HomeScreen(),
        SignInScreen().id: (context) => SignInScreen(),
        SignUpScreen().id: (context) => SignUpScreen(),
        ProfileScreen().id: (context) => ProfileScreen(),
        CourseHome().id: (context) => CourseHome(),
        CourseDetails().id: (context) => CourseDetails(),
        AfterPurchase().id: (context) => AfterPurchase(),
        CampaignPage().id: (context) => CampaignPage(),
      },
    );
  }
}
