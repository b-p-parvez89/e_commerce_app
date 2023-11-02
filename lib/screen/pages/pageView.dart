import 'package:e_commerce_app/screen/pages/all_product.dart';
import 'package:flutter/material.dart';

class MyPageViewWithTabBar extends StatelessWidget {
  final List<Widget> pages = [
    AllProduct(),
    Center(child: Text('Kids')),
    Center(child: Text('Mens')),
    Center(child: Text('Womens')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Container(
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    "Kids",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    "Men",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    "Women",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
