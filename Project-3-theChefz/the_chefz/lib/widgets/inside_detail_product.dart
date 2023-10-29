import 'package:flutter/material.dart';
import 'package:the_chefz/models/product_model.dart';
import 'package:the_chefz/models/resturant_model.dart';
import 'package:the_chefz/screens/detail_product_screen.dart';

class InsideDetailProduct extends StatelessWidget {
  final Product product;
  final Resturant resturant;
  const InsideDetailProduct(
      {super.key, required this.product, required this.resturant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailProductScreen(
            product: product,
            resturant: resturant,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(product.productImage)),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.productName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff161616),
                              fontSize: 15),
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: Color(0xffd4d4d4),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffbd7ea9),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          product.productRating,
                          style: const TextStyle(
                            color: Color(0xff9d7c8d),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          ' (${product.productRatingMember})',
                          style: const TextStyle(
                              color: Color(0xffc4abb9), fontSize: 13),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          product.productPrice,
                          style: const TextStyle(
                              color: Color(0xff4e374a),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
