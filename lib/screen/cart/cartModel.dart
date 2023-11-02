import '../../model/productModel.dart';
import 'package:get/get.dart';

class CartItem {
  final ProductModel product;
  double quantity;
  String size;

  CartItem({
    required this.product,
    required this.quantity,
    required this.size
  });
}

class CartController extends GetxController {
  final RxList<CartItem> cartItems = <CartItem>[].obs;

  // }
  void addToCart(ProductModel product, {required String size}) {
    final isProductInCart =
        cartItems.any((item) => item.product.id == product.id);

    if (!isProductInCart) {
      cartItems.add(CartItem(
        product: product,
         quantity: 1,
        size:size
      ));
    }
  }

  void removeFromCart(ProductModel product) {
    cartItems.removeWhere((item) => item.product == product);
    update(); // Update the UI
  }

  double getTotalPrice() {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += (item.product.price! * item.quantity);
    }
    return totalPrice;
  }
}
