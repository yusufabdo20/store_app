import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

import '../models/productsModel.dart';

class AllProductsService {
  Future<List<ProductstsModel>> getAllProducts() async {
    String baseUrl = "https://fakestoreapi.com/products";
    // http.Response response = await Api().get(apiUrl: baseUrl);
    List<ProductstsModel> productModelList = [];
    List<dynamic> data = await Api().get(apiUrl: baseUrl);
    for (int i = 0; i < data.length; i++) {
      productModelList.add(ProductstsModel.fromJson(data[i]));
    }
    return productModelList;
  }
}
