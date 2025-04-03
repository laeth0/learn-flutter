import 'package:flutter_project/models/Product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductRepository {
  static const String url = 'https://fakestoreapi.com/products';

  static Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> productsJson = json.decode(response.body);
      return productsJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
