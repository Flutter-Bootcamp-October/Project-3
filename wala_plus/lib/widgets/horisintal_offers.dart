import 'package:flutter/material.dart';

import 'package:wala_plus/constants/text_styles.dart';

class HorisintalOffer extends StatelessWidget {
  const HorisintalOffer(
      {super.key,
      required this.shopOfferImage,
      required this.shopLogo,
      required this.shopName});
  final String shopOfferImage;
  final String shopLogo;
  final String shopName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  shopOfferImage,
                  width: 280,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        shopLogo,
                        width: 64,
                        height: 64,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        shopName,
                        style: font14Bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
