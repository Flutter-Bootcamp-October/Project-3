
import 'package:flutter/material.dart';

class PromoCodeContainer extends StatelessWidget {
  const PromoCodeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 285,
      height: 45,
      decoration: BoxDecoration(
          color: Color(0xff6c554a),
          borderRadius: BorderRadius.circular(25)),
      child: Text(
        'Promo Code',
        style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
