import 'package:flutter/material.dart';

class StoresScrollWidget extends StatelessWidget {
  const StoresScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          child: Image.asset(
                            'assets/grandaMall.png',
                            height: 145,
                          ),
                        )),
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
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 145,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Granda Branch - Riyadh",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6f584d)),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text("Ar Riyadh",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Eastern Ring Rd, Granda Mall",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
