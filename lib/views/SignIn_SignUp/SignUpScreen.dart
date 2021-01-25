import 'package:flutter/material.dart';
import 'package:levelup/views/SignIn_SignUp/SignInScreen.dart';
import 'package:levelup/widgets/greenLargeButton.dart';

class SignUpScreen extends StatelessWidget {
  final String id = '/sinUpScreen';
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
                        hintText: 'Your Full Name',
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
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
                    SizedBox(
                      height: 20.0,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          child: Text('Already have an Account? SignIn'),
                        ),
                        onTap: () {
                          Navigator.popAndPushNamed(context, SignInScreen().id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              GreenLargeButton(
                buttonIcon: Icons.create,
                buttonText: 'SignUp',
              )
            ],
          ),
        ),
      ),
    );
  }
}
