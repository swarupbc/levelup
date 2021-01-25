import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:levelup/views/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  final String id = '/splashScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                "The World's #1 Training\n App for Pickeball",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Pickeball Magazine',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, HomeScreen().id);
                },
                child: Container(
                  height: 45.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
