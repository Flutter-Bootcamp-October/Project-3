import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

// ignore: must_be_immutable
class RemainingData extends StatelessWidget {
  RemainingData(
      {super.key,
      required this.Days,
      this.Min = 'Unlimited',
      this.appsGB = 'Unlimited',
      required this.dataGB,
      required this.date,
      required this.title,
      required this.totalGB,
      required this.bottun1,
      required this.bottun2});
  String Days;
  String date;
  String dataGB;
  String Min;
  String appsGB;
  String title;
  String totalGB;
  String bottun1;
  String bottun2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 350,
        height: 240,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 32,
              decoration: const BoxDecoration(
                  color: Color(0xff5c8c98),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  Days,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 137, 26, 24),
                                      fontWeight: FontWeight.w900),
                                ),
                                const Text(
                                  'left',
                                  style: TextStyle(
                                      color: grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          const Center(
                            child: CircularProgressIndicator(
                                color: const Color(0xff3c2d53),
                                strokeAlign: 4,
                                backgroundColor: Colors.grey,
                                strokeWidth: 10,
                                value: 0.3),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        'Valid until',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff3c2d53),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        date,
                        style: const TextStyle(
                            fontSize: 12,
                            color: grey,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 140,
                  width: 1,
                  color: Colors.black,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text('Data',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900)),
                        const SizedBox(
                          width: 75,
                        ),
                        Text(
                          dataGB,
                          style: const TextStyle(
                              color: Color(0xff3c2d53),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('/$totalGB GB',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                            width: 200,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15))),
                        Container(
                            width: 70,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xff3c2d53),
                                borderRadius: BorderRadius.circular(15)))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Text('Calls',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900)),
                        const SizedBox(
                          width: 65,
                        ),
                        Text(
                          Min,
                          style: TextStyle(
                              color: Color(0xff3c2d53),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('/min',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                            width: 200,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15))),
                        Container(
                            width: 120,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xff3c2d53),
                                borderRadius: BorderRadius.circular(15)))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Text('5Apps',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900)),
                        const SizedBox(
                          width: 65,
                        ),
                        Text(
                          appsGB,
                          style: const TextStyle(
                              color: Color(0xff3c2d53),
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('/GB',
                            style: const TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w900))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                            width: 200,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15))),
                        Container(
                            width: 100,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xff3c2d53),
                                borderRadius: BorderRadius.circular(15)))
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(bottun1,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900)),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(175, 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20))),
                        backgroundColor: red)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(175, 20),
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20)))),
                  child: Text(bottun2,
                      style: const TextStyle(
                          color: red,
                          fontSize: 18,
                          fontWeight: FontWeight.w900)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
