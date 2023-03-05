import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:store_app/services/get_all_products_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text("New Trend", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
          child: FutureBuilder<List<ProductstsModel>>(
            future: AllProductsService().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductstsModel> products = snapshot.data!;

                return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 80),
                  itemBuilder: (context, index) => CustomCard(
                    product: products[index],
                      // title: "title fd sf Sdfdv dfvd",
                      // price: "price",
                      // image:
                      //     "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg"
                      ),
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          )),
    );
  }
}
