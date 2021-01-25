import 'package:flutter/material.dart';
import 'package:levelup/widgets/greenLargeButton.dart';

class CourseDetails extends StatelessWidget {
  final String id = '/courseDetails';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Video Overview'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/homebanner1.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text('BreakOut - Designed for intermediate'),
              ),
              SizedBox(height: 20.0),
              GreenLargeButton(
                buttonIcon: Icons.play_circle_filled,
                buttonText: 'Whatch Trailer',
              ),
              SizedBox(height: 15.0),
              Center(
                child: Text(
                    '51 Minutes/ 16 Videos/ Includes Personal Video Dutes'),
              ),
              Center(
                child: Container(
                  width: 250.0,
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'The breakout series contains 15 modules for the players in the 3.0 - 3.9 range wanting to compete and win the 4.0-4.5 levels.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0),
              Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 0),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Curriculum', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(
                        children: [Text('', style: TextStyle(fontSize: 20.0))]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('MySQL')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('ReactJS')]),
                    Column(children: [Text('5*')]),
                  ]),
                ],
              ),
              Container(
                width: 250.0,
                child: Center(
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Text(
                  '\$149',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
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
