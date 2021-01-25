import 'package:flutter/material.dart';
import 'package:levelup/constants/const.dart';

class HomeBanner extends StatelessWidget {
  final String homeBannerImage;
  final String homeBannerText;
  HomeBanner({this.homeBannerImage, this.homeBannerText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/courseHome');
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(homeBannerImage),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[300],
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 200,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 130, 0, 10),
            child: Text(
              homeBannerText,
              style: kBannerTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
