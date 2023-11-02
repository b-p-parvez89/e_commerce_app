import 'package:e_commerce_app/screen/pages/home.dart';
import 'package:flutter/material.dart';

import '../caregory_screen/category_home.dart';
import '../cart/cartPage.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomePages(),
    Category_Home(),
    Center(
      child: Text("Message"),
    ),
    CartPage(),
    Center(
      child: Text("profile"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          currentIndex: pageIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: const Color.fromARGB(255, 76, 71, 71),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Catagoy"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
