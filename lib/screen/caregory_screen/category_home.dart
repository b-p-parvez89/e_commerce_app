import 'package:e_commerce_app/screen/pages/bottombarPage.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:e_commerce_app/utils/variable.dart';
import 'package:e_commerce_app/widget/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category_Home extends StatelessWidget {
  const Category_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.3),
      appBar: CustomAppBar(
        title: "Category",
        textColor: Colorr.mainAppColor,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: InkWell(
            onTap: () {
              Get.to(BottomNavigationBarWidget());
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
              ),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        action: [],
      ),
      body: _gridview(),
    );
  }

  _gridview() {
    return GridView.builder(
        itemCount: Variable.catagoriImage.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image:
                                  AssetImage(Variable.catagoriImage[index]))),
                    ),
                    Text(Variable.categoryName[index],
                        style: TextStyle(fontSize: 20, color: Colors.purple))
                  
                   ],
                ),
              ),
            ),
          );
        });
  }
}
