import 'package:flutter/material.dart';

import 'package:yaqoot_project/Models/gift_call_data.dart';

import 'package:yaqoot_project/constents/colors_style.dart';

class GiftCallDataWidgit extends StatelessWidget {
  const GiftCallDataWidgit({super.key, required this.product});
  final GiftCallData product;

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
                        style: const TextStyle(
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
                        style: const TextStyle(
                            color: green,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 4,
                      )
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
