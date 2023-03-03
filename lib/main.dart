import 'package:flutter/material.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:store_app/services/get_all_products_services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: TextButton(
                onPressed: () async {
                },
                child: Text("Get all product"))),
      ),
    );
  }
}
