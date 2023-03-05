import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productsModel.dart';

class UpdateProductService {
  Future<ProductstsModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    // required String token,
  }) async {
    Map<String, dynamic> data = await Api().put(
      apiUrl: 'https://fakestoreapi.com/products/$id',
      body: {
        "id": id.toString(),
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
      // token: token,
    );
    print('product Id = $id');

    return ProductstsModel.fromJson(data);
  }
}

// Future<ProductstsModel> updateProduct(
//   String id,
//   String title,
//   String price,
//   String description,
//   String image,
//   String category,
// ) async {
//   http.Response response = await http.put(
//     Uri.parse('https://fakestoreapi.com/products/$id'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, dynamic>{
//       'id': id,
//       "title": title,
//       "price": price,
//       "description": description,
//       "image": image,
//       "category": category,
//     }),
//   );
//   Map<String, dynamic> data = jsonDecode(response.body);
//   return ProductstsModel.fromJson(data);
// }
