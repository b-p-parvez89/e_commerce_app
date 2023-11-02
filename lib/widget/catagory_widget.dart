import 'package:flutter/material.dart';

class CatagoryWidgets extends StatelessWidget {
  final List imageList;

  const CatagoryWidgets({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(3),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(image: AssetImage(imageList[index]))),
            ),
          );
        },
      ),
    );
  }
}
