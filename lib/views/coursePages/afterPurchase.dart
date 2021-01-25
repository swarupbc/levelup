import 'package:flutter/material.dart';
import 'package:levelup/widgets/bannerWithLikeButton.dart';
import 'package:levelup/widgets/greenLargeButton.dart';

class AfterPurchase extends StatelessWidget {
  final String id = '/afterPurchase';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Video Overview'),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
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
                    Icon(
                      Icons.play_circle_outline_rounded,
                      color: Colors.white,
                      size: 50.0,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Text(
                  'Serving Position and form - Duet Tips',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text('Duration of program / Number of videos...'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Center(
                  child: GreenLargeButton(
                    buttonIcon: Icons.videocam_rounded,
                    buttonText: 'Record Your Duet',
                  ),
                ),
              ),
              BannerWithLikeButton(
                bannerWithLikeImage: 'assets/images/homebanner2.png',
                bannerWithLkeDate: 'Jan 12, 2021',
              ),
              BannerWithLikeButton(
                bannerWithLikeImage: 'assets/images/homebanner3.png',
                bannerWithLkeDate: 'Jan 10, 2021',
              ),
              BannerWithLikeButton(
                bannerWithLikeImage: 'assets/images/homebanner1.png',
                bannerWithLkeDate: 'Jan 8, 2021',
              ),
              BannerWithLikeButton(
                bannerWithLikeImage: 'assets/images/homebanner2.png',
                bannerWithLkeDate: 'Jan 6, 2021',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
