import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

class AllGategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(apiUrl: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
