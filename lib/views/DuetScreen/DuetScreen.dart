import 'package:flutter/material.dart';
import 'package:levelup/widgets/DuetVideoCard.dart';

class DuetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                DuetVideoCard(),
                SizedBox(height: 10.0),
                DuetVideoCard(),
                SizedBox(height: 10.0),
                DuetVideoCard(),
                SizedBox(height: 10.0),
                DuetVideoCard(),
                SizedBox(height: 10.0),
                DuetVideoCard(),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
