import 'package:flutter/material.dart';
import 'package:levelup/constants/const.dart';
import 'package:levelup/widgets/CourseCard.dart';

class CourseSlider extends StatelessWidget {
  final String productSliderTitle;
  const CourseSlider({this.productSliderTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                productSliderTitle,
                style: kShopPageTitleStyle,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner2.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner3.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner2.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                  CourseCard(
                      courseTitle: 'Lorem Ipsum is simply dummy',
                      courseimageUrl: 'assets/images/homebanner1.png'),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
