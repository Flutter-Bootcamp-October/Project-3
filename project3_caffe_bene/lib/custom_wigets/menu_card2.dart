import 'package:flutter/material.dart';

class MenuCardTwo extends StatelessWidget {
  const MenuCardTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            shadowColor: Colors.grey,
            elevation: 5,
            child: Container(
              height: 140,
              width: 95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/orange_juice.png',
                      width: 75,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Caffe Latte",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "18 - 18 SAR",
                      style: TextStyle(fontSize: 11, color: Color(0xfff3a520)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
