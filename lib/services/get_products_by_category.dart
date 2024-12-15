import 'dart:convert';

import '../helper/api.dart';
import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class GetProductsByCategory {
  Future<List<ProductModel>> getProductsByCategory(
      {required String categoryName}) async {
    List<dynamic> productsMap = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");
    List<ProductModel> products = [];
    for (var product in productsMap) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
