import 'dart:convert';

import 'package:e_commerce_app/screen/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../model/productModel.dart';

class AllProduct extends StatefulWidget {
  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  List<ProductModel> post = [];
  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse("asset/json/allProduct.json"));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        post = data.map((post) => ProductModel.fromJson(post)).toList();
      });
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
      ),
      itemCount: post.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(DetailsPage(
                id: post[index].id,
                title:post[index].title,
                description: post[index].description,
                rating: post[index].rating,
                image: post[index].image,
                category: post[index].category,
                price: post[index].price,
              
            ));
          },
          child: Card(
              child: Container(
            height: 300,
            child: Column(
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(post[index].image.toString()))),
                ),
                Text(
                  post[index].title.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${post[index].price}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.orange),
                      ),
                      Text("${post[index].rating!.rate.toString()}/5")
                    ],
                  ),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
