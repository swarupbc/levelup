import 'package:flutter/material.dart';
import 'package:levelup/constants/const.dart';

class ProductCard extends StatelessWidget {
  final String productCardImage;
  final String productCardText;
  final String productButtonText;
  ProductCard(
      {this.productCardImage, this.productCardText, this.productButtonText});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(productCardImage),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[300],
            ),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 200,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      productCardText,
                      textAlign: TextAlign.center,
                      style: kBannerTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: Text(productButtonText),
                  ),
                  height: 40.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
