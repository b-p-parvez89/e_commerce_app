import 'package:e_commerce_app/screen/cart/cartModel.dart';
import 'package:e_commerce_app/widget/materialButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/customAppBar.dart';
import '../pages/bottombarPage.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.4),
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        action: [
          IconButton(
              onPressed: () {
                Get.to(BottomNavigationBarWidget());
              },
              icon: Icon(Icons.home))
        ],
        title: "My Cart",
        textColor: Colors.black,
        centerTitle: true,
      ),
      body: Obx(() => ListView.builder(
            itemCount: cartController.cartItems.length,
            itemBuilder: (context, index) {
              final cartItem = cartController.cartItems[index];
              //double quantity = cartItem.quantity;
              return Card(
                child: ListTile(
                  onTap: () {},
                  leading: Container(
                    height: 200,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image:
                                AssetImage(cartItem.product.image.toString()))),
                  ),
                  title: Text(cartItem.product.title.toString()),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity: ${cartItem.quantity}',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "Size: ${cartItem.size}",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                  trailing:
                      Text('\$${cartItem.product.price! * cartItem.quantity}'),
                  onLongPress: () {
                    cartController.removeFromCart(cartItem.product);
                  },
                ),
              );
            },
          )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 0, 251).withOpacity(0.4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Obx(() => Container(
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      'Total: \$${cartController.getTotalPrice().toInt()}',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            MButton(text: "Buy", minWidth: 100)
          ],
        ),
      ),
    );
  }
}
