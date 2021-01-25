import 'package:flutter/material.dart';

const kBannerTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.white,
  fontWeight: FontWeight.w900,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(10.0, 10.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(10.0, 10.0),
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 255),
    ),
  ],
);

const kShopPageTitleStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  color: Colors.black54,
);

const kWhiteTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);
