import 'package:flutter/material.dart';
import 'package:the_chefz/models/product_model.dart';
import 'package:the_chefz/models/resturant_model.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({
    super.key,
    required this.product,
    required this.resturant,
  });
  final Product product;
  final Resturant resturant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.productImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 15,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton.small(
                            backgroundColor: const Color(0xfffefefe),
                            onPressed: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Color(0xff212121),
                            ),
                          ),
                          Text(
                            resturant.restaurantName,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfffffaff)),
                          ),
                          Row(
                            children: [
                              FloatingActionButton.small(
                                onPressed: () {},
                                backgroundColor: const Color(0xfffefefe),
                                child: const Icon(Icons.ios_share,
                                    color: Color(0xff212121)),
                              ),
                              FloatingActionButton.small(
                                onPressed: () {},
                                backgroundColor: const Color(0xfffefefe),
                                child: const Icon(Icons.favorite_border,
                                    color: Color(0xff212121)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        product.productName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff030303)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.productPrice,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xff71345e)),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffffc513),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              product.productRating,
                              style: const TextStyle(color: Color(0xff9f9f9f)),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${product.productRatingMember} Rating",
                              style: const TextStyle(color: Color(0xffe0d742)),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xfff3f3f3))),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Color(0xffc2c2c2),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Preparation Time",
                                  style: TextStyle(
                                      color: Color(0xff535353), fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "30 mins",
                                style: TextStyle(
                                    color: Color(0xff604157),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.description,
                          style: const TextStyle(color: Color(0xff101010)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(product.cal,
                            style: const TextStyle(color: Color(0xff101010))),
                        Text(product.note,
                            style: const TextStyle(color: Color(0xff101010))),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Quantity",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          width: 200,
                          height: 60,
                          decoration:
                              const BoxDecoration(color: Color(0xffffffff)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.remove),
                              Text("1"),
                              Icon(
                                Icons.add,
                                color: Color(0xffd45959),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add a note",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          "optional",
                          style: TextStyle(color: Color(0xffcdcdcd)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xfff3f3f3)),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Color(0xffcdcdcd),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text("Add your notes here (Ex. Write on cake)",
                                style: TextStyle(
                                    color: Color(0xffcdcdcd),
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 225, top: 10),
                      child: Text("0-140 Character",
                          style: TextStyle(color: Color(0xffcdcdcd))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 3,
          child: Container(
            width: MediaQuery.sizeOf(context).width - 20,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6C355C),
                  textStyle: const TextStyle(fontSize: 18),
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('ADD TO CART'),
                    Text(product.productPrice),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
