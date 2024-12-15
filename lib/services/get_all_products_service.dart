import 'dart:convert';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
    await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> productsMap = jsonDecode(response.body);

      List<ProductModel> products = [];
      for (var product in productsMap) {
        products.add(ProductModel.fromJson(product));
      }
      return products;
    } else {
      throw Exception("status code error ${response.statusCode}");
    }
  }
}