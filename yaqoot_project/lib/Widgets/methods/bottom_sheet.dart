
import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

Future<dynamic> BottomSheet1(BuildContext context) {
  return showModalBottomSheet(
            useSafeArea: true,
            shape: CircleBorder(),
            context: context,
            builder: (BuildContext context) => Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14, left: 12),
                    child: Container(
                        width: 300,
                        height: 80,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: ImageIcon(
                                color: red,
                                AssetImage(
                                    'lib\\assets\\icons\\phone-call.png'),
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('0543289456',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)),
                                Text('[Voice]',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700)),
                              ],
                            )
                          ],
                        )),
                  ),
                ));
}
