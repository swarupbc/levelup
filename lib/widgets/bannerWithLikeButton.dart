import 'package:flutter/material.dart';

class BannerWithLikeButton extends StatelessWidget {
  final String bannerWithLikeImage;
  final String bannerWithLkeDate;
  BannerWithLikeButton({this.bannerWithLikeImage, this.bannerWithLkeDate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/courseHome');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 2),
            child: Text(bannerWithLkeDate),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(bannerWithLikeImage),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 200,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
