import 'package:flutter/material.dart';
import 'package:levelup/views/coursePages/afterPurchase.dart';

class GreenLargeButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  const GreenLargeButton({this.buttonIcon, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AfterPurchase().id);
      },
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
                buttonIcon,
                color: Colors.white,
                size: 30.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                buttonText,
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
    );
  }
}
