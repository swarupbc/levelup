import 'package:flutter/material.dart';
import 'package:levelup/widgets/ProductSlider.dart';

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey[400],
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(24)),
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CourseSlider(
                productSliderTitle: 'Complete Level Based Programs',
              ),
              SizedBox(height: 20.0),
              CourseSlider(
                productSliderTitle: 'Invidual Lessons & video Duets',
              ),
              SizedBox(height: 20.0),
              CourseSlider(
                productSliderTitle: 'Drill, Games & Fitness',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
