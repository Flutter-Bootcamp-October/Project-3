import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/product_devices.dart';
import 'package:yaqoot_project/Screens/Product.dart';
import 'package:yaqoot_project/constents/colors_style.dart';


class DeviceWidget extends StatelessWidget {
  const DeviceWidget({super.key, required this.product});
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(product.deviceName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, color: purpul)),
                          const SizedBox(height: 14),
                          Text(
                            'From',
                            style: TextStyle(
                                color: purpul,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '${product.price}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: purpul,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )
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
