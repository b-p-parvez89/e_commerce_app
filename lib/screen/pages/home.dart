
import 'package:e_commerce_app/utils/color.dart';
import 'package:flutter/material.dart';

import '../../utils/variable.dart';
//import '../../widget/catagory_widget.dart';
import '../../widget/image_changer.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "First Best Product\nfor Your Life",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colorr.mainAppColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            )))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colorr.mainAppColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search your Product",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ImageCarouselSlider(
                  imageUrls: Variable.imageUrls,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Product",
                        style: TextStyle(fontSize: 24, color: Colors.orange)),
                    TextButton(
                        onPressed: () {},
                        child: Text("See All",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)))
                  ],
                ),
               
                // AllProduct()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
