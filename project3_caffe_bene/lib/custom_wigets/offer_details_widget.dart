import 'package:flutter/material.dart';

class OfferDetailsWidget extends StatelessWidget {
  const OfferDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            child: Image.asset(
              "assets/offer2.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "data",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6c554b),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "data",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6c554b),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "18 SAR",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFE2B900),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                          color: Color(0xff6c554b),
                          borderRadius: BorderRadius.circular(35)),
                      child: const Text(
                        'Redeem',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                          color: Color(0xff6c554b),
                          borderRadius: BorderRadius.circular(35)),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
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
