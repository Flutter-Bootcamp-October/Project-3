import 'package:flutter/material.dart';
import 'package:yaqoot_project/Models/add_ons.dart';

import 'package:yaqoot_project/constents/colors_style.dart';

class AddOnsWidget extends StatelessWidget {
  const AddOnsWidget({super.key, required this.product});
  final AddOns product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          product.Name,
                          style: const TextStyle(
                              color: purpul, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '[',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12, color: purpul),
                            ),
                            Text(
                              product.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                  color:
                                      const Color.fromARGB(255, 226, 158, 0)),
                            ),
                            const Text(
                              ']',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12, color: purpul),
                            ),
                          ],
                        ),
                        Text(
                          product.subtitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: const Color.fromARGB(255, 226, 158, 0)),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'From',
                          style: TextStyle(
                              color: purpul,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${product.Price} SAR',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: purpul, fontWeight: FontWeight.w700),
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
    );
  }
}
