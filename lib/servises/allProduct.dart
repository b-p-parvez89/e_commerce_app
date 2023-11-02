import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/productModel.dart';

class ApiController {
  final String baseUrl;

  ApiController(this.baseUrl);

  Future<List<ProductModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      List<ProductModel> posts = data.map((json) => ProductModel.fromJson(json)).toList();
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
