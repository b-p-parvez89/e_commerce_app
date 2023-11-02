// ignore_for_file: must_be_immutable

import 'package:e_commerce_app/screen/cart/cartModel.dart';
import 'package:e_commerce_app/screen/cart/cartPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../model/productModel.dart';
import '../utils/variable.dart';

class DetailsPage extends StatefulWidget {
  String? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  Rating? rating;
  DetailsPage(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating,
      required this.category});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int isSelected = -1;
  final CartController cartController = Get.put(CartController());

  List<String> size = ['S', 'M', 'L', 'XL', 'XXL'];
  void addItemToCart(ProductModel product) {
    if (Variable.cartItems.contains(product)) {
      setState(() {
        Variable.cartItems.add(product);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(widget.category.toString()),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(CartPage());
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Expanded(child: Image.network(widget.image.toString())),
            const SizedBox(
              height: 10,
            ),
            Text(widget.title.toString().toUpperCase(),
                style: _textstyle(
                    size: 24, color: Colors.purple, weight: FontWeight.bold)),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              child: SingleChildScrollView(
                child: Text(widget.description.toString(),
                    style: _textstyle(
                        size: 18,
                        color: Colors.black,
                        weight: FontWeight.normal)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(widget.category.toString(),
                style: _textstyle(
                    size: 14, color: Colors.black, weight: FontWeight.normal)),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("\$ ${widget.price}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _ratingBar(widget.rating!.rate),
                      Text("${widget.rating!.count}"),
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: Row(children: [
                Text("Size: "),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: size.length,
                    itemBuilder: (contex, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isSelected == index
                                  ? Colors.purple
                                  : const Color.fromARGB(26, 199, 196, 196),
                              border: Border.all(
                                  color: Color.fromARGB(31, 115, 105, 105))),
                          child: Center(
                            child: Text(
                              size[index],
                              style: TextStyle(
                                  color: isSelected == index
                                      ? Colors.white
                                      : Colors.purple),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 5,
                      );
                    },
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    cartController.addToCart(
                        size: size[isSelected],
                        ProductModel(
                            title: widget.title,
                            price: widget.price,
                            id: widget.id,
                            image: widget.image));
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple),
                    child: const Text(
                      "Add To Card",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple),
                    child: const Text(
                      "Add To Favorite",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _textstyle(
      {required double size,
      required Color color,
      required FontWeight weight}) {
    return TextStyle(fontSize: size, color: color, fontWeight: weight);
  }

  _ratingBar(var rating) {
    return RatingBarIndicator(
        itemCount: 5,
        itemSize: 30,
        direction: Axis.horizontal,
        rating: rating,
        itemBuilder: (context, index) {
          return Icon(
            Icons.star,
            color: Colors.amber,
          );
        });
  }
}
