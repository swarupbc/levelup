import 'package:flutter/material.dart';
import 'package:levelup/views/courseHome/ShopHome.dart';
import 'package:levelup/views/courseHome/myPurchases.dart';

class CourseHome extends StatelessWidget {
  final String id = '/courseHome';
  final List<Widget> containers = [ShopHome(), MyPurchases()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(''),
            backgroundColor: Colors.green,
            elevation: 0,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Shop For Videos',
                ),
                Tab(
                  text: 'My Purchases',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        ),
      ),
    );
  }
}
