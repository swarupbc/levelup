import 'package:flutter/material.dart';
import 'package:levelup/constants/const.dart';
import 'package:levelup/widgets/greenLargeButton.dart';

class ProfileScreen extends StatelessWidget {
  final String id = '/profileScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 70.0,
                child: Image.asset('assets/images/avatar.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'James Bond',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300.0,
                child: Divider(
                  height: 2.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Your Email',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'jamesbond007@gmail.com',
                style: kShopPageTitleStyle,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              GreenLargeButton(
                buttonText: 'Change Password',
                buttonIcon: Icons.settings,
              )
            ],
          ),
        ),
      ),
    );
  }
}
