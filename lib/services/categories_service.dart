import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductstsModel>> getCategoriesProducts(
      {required String categoryName}) async {
    String baseUrl = "https://fakestoreapi.com/products/category/$categoryName";
    http.Response response = await Api().get(apiUrl: baseUrl);
    List<dynamic> data = jsonDecode(response.body);
    List<ProductstsModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductstsModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
