import 'package:flutter/material.dart';

class DuetVideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Jan 20, 2021'),
                SizedBox(width: 25.0),
                Text(
                  'Practice',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/duet1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 125.0,
                  width: 165.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20.0,
                )
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Jan 11, 2021'),
                SizedBox(width: 25.0),
                Text(
                  'Dinking',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/duet2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 125.0,
                  width: 165.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20.0,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
