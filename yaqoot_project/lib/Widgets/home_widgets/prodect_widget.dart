import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/product_devices.dart';
import 'package:yaqoot_project/Screens/Product.dart';
import 'package:yaqoot_project/constents/colors_style.dart';


class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});
  final Productdevice product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Product(product: product),
            ));
      },
      child: SizedBox(
        height: 300,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        product.image,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.prand,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: purpul,
                                  fontWeight: FontWeight.w900)),
                          const SizedBox(height: 4),
                          Text(
                            product.deviceName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 16,
                                color: purpul,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(height: 4),
                          Text('${product.price} SAR',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: green,
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 50,
                decoration: BoxDecoration(
                    color: product.isoffer ? red : green,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(product.status,
                        style: const TextStyle(
                          color: white,
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
