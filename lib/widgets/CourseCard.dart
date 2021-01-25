import 'package:flutter/material.dart';
import 'package:levelup/views/coursePages/CourseDetails.dart';

class CourseCard extends StatelessWidget {
  final String courseTitle;
  final String courseimageUrl;
  CourseCard({this.courseTitle, this.courseimageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CourseDetails().id);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(courseimageUrl),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey[300],
              ),
              height: 155.0,
              width: 225.0,
            ),
            Text(courseTitle),
          ],
        ),
      ),
    );
  }
}
