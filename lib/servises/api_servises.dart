// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import '../model/product.dart';

// class FakeApiService {
// //  static const String baseUrl = 'https://fakestoreapi.\
// // .com/products';

//   Future<List<Product>> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       return (data as List).map((product) => Product.fromJson(product)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }
