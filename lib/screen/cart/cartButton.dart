
import 'package:e_commerce_app/model/productModel.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatefulWidget {
  final ProductModel product;

  AddToCartButton({required this.product});

  @override
  _AddToCartButtonState createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool inCart = false;

  @override
  Widget build(BuildContext context) {
    return inCart
        ? IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              setState(() {
                inCart = false;
              });
            },
          )
        : ElevatedButton(
            onPressed: () {
              setState(() {
                inCart = true;
              });
            },
            child: Text('Add to Cart'),
          );
  }
}