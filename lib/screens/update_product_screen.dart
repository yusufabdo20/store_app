import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/customButton.dart';
import 'package:store_app/widgets/custom_textFormFeild.dart';

class UpdateProductScreen extends StatefulWidget {
  static String id = "update_product-screen";

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  // const UpdateProductScreen({super.key});
  String? productName;

  String? productImage;

  String? productDesc;

  String? productPrice;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductstsModel product =
        ModalRoute.of(context)!.settings.arguments as ProductstsModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Text("Udate product data", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              buildFormFieldText(
                  onChange: (value) {
                    productName = value;
                  },
                  labelText: "Product title ",
                  notFocusedBorderColor: Colors.black45),
              buildFormFieldText(
                  onChange: (value) {
                    productImage = value;
                  },
                  labelText: "Image ",
                  notFocusedBorderColor: Colors.black45),
              buildFormFieldText(
                  keyboardType: TextInputType.number,
                  onChange: (value) {
                    productPrice = value;
                  },
                  labelText: "Product Price ",
                  notFocusedBorderColor: Colors.black45),
              buildFormFieldText(
                  // keyboardType: TextInputType.number,
                  onChange: (value) {
                    productDesc = value;
                  },
                  labelText: "Product Description ",
                  notFocusedBorderColor: Colors.black45),
              buildElevatedTextButton(
                buttonWidth: double.infinity,
                backgroundColor: Color.fromARGB(96, 131, 38, 38),
                titleOfButton: "Update",
                onPressedFunction: () async {
                  isLoading = true;
                  setState(() {});

                  try {
                    await updateProduct(product);
                    print("Success");
                  } catch (e) {
                    print("Product update failed");
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              )
            ],
          )),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductstsModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id!,
      title: productName == null ? product.title! : productName!,
      price: productPrice == null ? product.price.toString() : productPrice!,
      description: productDesc == null ? product.description! : productDesc!,
      image: productImage == null ? product.image! : productImage!,
      category: product.category!,
    );
  }
}
