import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:store_app/screens/update_product_screen.dart';
import 'package:store_app/services/get_all_products_services.dart';
import 'package:http/http.dart' as http;

import 'screens/home_screen.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductScreen.id: (context) => UpdateProductScreen(),
      },
    );
  }
}
