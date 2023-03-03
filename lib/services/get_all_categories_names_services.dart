import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

class AllGategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response =
        await Api().get(apiUrl: "https://fakestoreapi.com/products/categories");
    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
