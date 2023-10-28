import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/custom_wigets/stores.dart';

class storesCardWidget extends StatefulWidget {
  storesCardWidget({
    super.key,
    required this.store,
  });

  final Stores store;

  @override
  State<storesCardWidget> createState() => _storesCardWidgetState();
}

class _storesCardWidgetState extends State<storesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    child: Image.asset(
                      widget.store.image,
                      width: 170,
                      height: 165,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff6f584d)),
                        child: const Icon(
                          Icons.directions,
                          color: Colors.white,
                          size: 20,
                        )),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 155,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.store.name,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6f584d),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(widget.store.city,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(widget.store.location,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w500)),
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
