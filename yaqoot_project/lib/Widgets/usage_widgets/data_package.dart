import 'package:flutter/material.dart';

import 'package:yaqoot_project/constents/colors_style.dart';

class Datapackage extends StatelessWidget {
  const Datapackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: 350,
          height: 240,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 32,
                decoration: const BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    '1X Package',
                    style: const TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Data',
                    style: TextStyle(
                        color: purpul,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Remaining',
                        style: TextStyle(
                            color: purpul,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 230,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(15))),
                          Container(
                              width: 100,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: purpul,
                                  borderRadius: BorderRadius.circular(15))),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text('4.70', style: TextStyle(color: white)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Calls',
                      style: TextStyle(
                          color: purpul,
                          fontSize: 18,
                          fontWeight: FontWeight.w800)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Remaining',
                        style: TextStyle(
                            color: purpul,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 230,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(15))),
                          Container(
                              width: 120,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: purpul,
                                  borderRadius: BorderRadius.circular(15))),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text('4.70', style: TextStyle(color: white)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(175, 20),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20))),
                          backgroundColor: red),
                      child: Text('Renew',
                          style: const TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.w900))),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(175, 20),
                        backgroundColor: white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20)))),
                    child: Text('Add-ons',
                        style: const TextStyle(
                            color: red,
                            fontSize: 18,
                            fontWeight: FontWeight.w900)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
