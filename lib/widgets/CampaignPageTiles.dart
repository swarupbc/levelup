import 'package:flutter/material.dart';

class CampaignTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.0),
        Container(
          width: 70,
          height: 70,
          child: Image.asset('assets/images/homebanner1.png'),
        ),
        SizedBox(width: 8),
        Text('CampName'),
        SizedBox(width: 8),
        Text('Jan 01. \n2021'),
        SizedBox(width: 8),
        Text('\$100'),
        SizedBox(width: 25.0),
        Text('Advanced'),
      ],
    );
  }
}
