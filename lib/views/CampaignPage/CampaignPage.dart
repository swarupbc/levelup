import 'package:flutter/material.dart';
import 'package:levelup/constants/const.dart';
import 'package:levelup/widgets/CampaignPageTiles.dart';

class CampaignPage extends StatelessWidget {
  final String id = '/CampaignPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset('assets/icon.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Pro',
                      style: kWhiteTextStyle,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Camp',
                      style: kWhiteTextStyle,
                    ),
                    Text(
                      'Date',
                      style: kWhiteTextStyle,
                    ),
                    Text(
                      'Price',
                      style: kWhiteTextStyle,
                    ),
                    Text(
                      'Available',
                      style: kWhiteTextStyle,
                    ),
                  ],
                ),
              ),
              CampaignTiles(),
              CampaignTiles(),
              CampaignTiles(),
              CampaignTiles(),
              CampaignTiles(),
            ],
          ),
        ),
      ),
    );
  }
}
