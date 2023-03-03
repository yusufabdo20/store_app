import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productsModel.dart';

class AddProduct {
  Future<ProductstsModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required String token,
  }) async {
    Map<String, dynamic> data = await Api().post(
      apiUrl: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
      token: token,
    );
    // Map<String, dynamic> products = {};
    // for (int i = 0; i < data.length; i++) {
    //   products.update(, (value) => null)
    // }
    return ProductstsModel.fromJson(data);
  }
}
