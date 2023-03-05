import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store_app/models/productsModel.dart';
import 'package:store_app/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  // const CustomCard({super.key});
 ProductstsModel product ; 
  // String title;
  // String price;
  // String image;
  CustomCard(
    {required this.product}
    // {required this.title, required this.price, required this.image}
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id ,arguments:product ) ;
      
      },
      child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius:20 ,
                  offset: Offset(10, 10),
                ),
              ]),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                       product.title!,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        overflow:TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 32,
              top: -60,
              child: Image.network(
                product.image!,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
    );
  }
}
