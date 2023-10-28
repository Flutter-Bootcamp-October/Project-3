import 'package:flutter/material.dart';

import 'package:yaqoot_project/Models/gift_roaming.dart';

import 'package:yaqoot_project/constents/colors_style.dart';

class GiftRoamingWidgit extends StatelessWidget {
  const GiftRoamingWidgit({super.key, required this.product});
  final GiftRoaming product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        product.Name,
                        style: TextStyle(
                            fontSize: 16,
                            color: purpul,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 14, color: Colors.amber[600]),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${product.Price} SAR',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: green,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
