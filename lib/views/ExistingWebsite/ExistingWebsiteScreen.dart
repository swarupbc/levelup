import 'package:flutter/material.dart';
import 'package:levelup/views/CampaignPage/CampaignPage.dart';

class ExistingWebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/icon.png',
              width: 150.0,
              height: 150.0,
            ),
          ),
          Text(
            '100 Camps in 35 States\n 3 Days, 15 Hours of Instruction \n Low Student to Pro Ratio \n Top Instructors in the Sport',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 25.0),
          Text(
            'CLICK ON CITY TO VIEW CAMP',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 30.0),
          Image.asset(
            'assets/images/map.png',
            width: 300.0,
          ),
          SizedBox(height: 20.0),
          Text(
            'UPCOMING CAMPS 2021',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MonthButton(
                  differentMonthName1: 'January',
                  differentMonthName2: 'February',
                  differentMonthName3: 'March',
                  differentMonthName4: 'April',
                ),
                SizedBox(height: 10),
                MonthButton(
                  differentMonthName1: 'May',
                  differentMonthName2: 'June',
                  differentMonthName3: 'July',
                  differentMonthName4: 'August',
                ),
                SizedBox(height: 10),
                MonthButton(
                  differentMonthName1: 'September',
                  differentMonthName2: 'October',
                  differentMonthName3: 'November',
                  differentMonthName4: 'December',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MonthButton extends StatelessWidget {
  final String differentMonthName1;
  final String differentMonthName2;
  final String differentMonthName3;
  final String differentMonthName4;

  MonthButton(
      {this.differentMonthName1,
      this.differentMonthName2,
      this.differentMonthName3,
      this.differentMonthName4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GreenMonthButton(
          monthName: differentMonthName1,
        ),
        GreenMonthButton(
          monthName: differentMonthName2,
        ),
        GreenMonthButton(
          monthName: differentMonthName3,
        ),
        GreenMonthButton(
          monthName: differentMonthName4,
        ),
      ],
    );
  }
}

class GreenMonthButton extends StatelessWidget {
  final monthName;
  GreenMonthButton({@required this.monthName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CampaignPage().id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 5.0),
        child: Text(
          monthName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        width: 70.0,
        height: 30,
        decoration: BoxDecoration(color: Colors.green),
      ),
    );
  }
}
