import 'package:e_commerce_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarouselSlider extends StatelessWidget {
  final List<String> imageUrls;

  ImageCarouselSlider({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 8, // Adjust this aspect ratio as needed
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Image.asset(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: 10,
                  left: 30,
                  child: Text("50%\nDiscounts",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold))),
              Positioned(
                  bottom: 10,
                  right: 20,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colorr.mainAppColor,
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("Get Now",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ))
            ]);
          },
        );
      }).toList(),
    );
  }
}
