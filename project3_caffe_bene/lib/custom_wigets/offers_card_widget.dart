import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/offer.dart';

class offersCardWidget extends StatefulWidget {
  const offersCardWidget({
    super.key,
    required this.offer,
  });

  final Offer offer;

  @override
  State<offersCardWidget> createState() => _offersCardWidgetState();
}

class _offersCardWidgetState extends State<offersCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                  ),
                  child: Image.asset(
                    widget.offer.image,
                    fit: BoxFit.fitHeight,
                    height: 165,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 165,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.offer.title,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.offer.name,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "${widget.offer.price} SAR",
                        overflow: TextOverflow.clip,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFE2B900)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
