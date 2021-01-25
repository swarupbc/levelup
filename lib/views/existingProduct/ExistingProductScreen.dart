import 'package:flutter/material.dart';
import 'package:levelup/widgets/productScreenCard.dart';

class WebsiteProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          ProductCard(
              productCardImage: 'assets/images/homebanner1.png',
              productCardText: 'Need Help\n Choosing a paddle?',
              productButtonText: 'Try Our Paddle Sellector'),
          ProductCard(
              productCardImage: 'assets/images/homebanner2.png',
              productCardText: 'Paddles',
              productButtonText: 'Shop For Paddles'),
          ProductCard(
              productCardImage: 'assets/images/homebanner3.png',
              productCardText: 'Balls',
              productButtonText: 'Ball'),
        ],
      ),
    ));
  }
}
