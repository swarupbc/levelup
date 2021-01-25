import 'package:flutter/material.dart';
import 'package:levelup/widgets/bannerWithLikeButton.dart';

class VideosScreen extends StatelessWidget {
  final id = '/videoScreen';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            BannerWithLikeButton(
              bannerWithLikeImage: 'assets/images/homebanner1.png',
              bannerWithLkeDate: '11/11/2022',
            ),
            SizedBox(height: 5.0),
            BannerWithLikeButton(
              bannerWithLikeImage: 'assets/images/homebanner2.png',
              bannerWithLkeDate: '11/11/2022',
            ),
            SizedBox(height: 5.0),
            BannerWithLikeButton(
              bannerWithLikeImage: 'assets/images/homebanner3.png',
              bannerWithLkeDate: '11/11/2022',
            ),
          ],
        ),
      ),
    );
  }
}
