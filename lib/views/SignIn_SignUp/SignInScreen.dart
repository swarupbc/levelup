import 'package:flutter/material.dart';
import 'package:levelup/views/SignIn_SignUp/SignUpScreen.dart';
import 'package:levelup/views/profile/ProfileScreen,dart.dart';
import 'package:levelup/widgets/greenLargeButton.dart';

class SignInScreen extends StatelessWidget {
  final String id = '/signInScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon.png',
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                          child: Text('SignUp'),
                        ),
                        onTap: () {
                          Navigator.popAndPushNamed(context, SignUpScreen().id);
                        },
                      ),
                      Container(
                        child: Text('Reset Password'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50.0,
                  width: 250.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'SignIn',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, ProfileScreen().id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
