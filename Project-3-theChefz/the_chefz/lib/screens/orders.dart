import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 3,
            backgroundColor: Colors.white,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Orders',
                    style: TextStyle(color: Color(0xff59254B), fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Reservations',
                    style: TextStyle(color: Color(0xff59254B), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  const NestedTabBar(),
                  Container(
                      margin: const EdgeInsets.only(top: 250),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/icon1_order.png",
                            width: 60,
                            height: 60,
                          ),
                          const Text(
                            "There are no past orders",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  // margin: const EdgeInsets.only(left: 10, right: 10),

                  Container(
                    margin:
                        const EdgeInsets.only(top: 250, right: 195, left: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff02b744),
                        textStyle: const TextStyle(fontSize: 18),
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "CONTACT US",
                            style: TextStyle(color: Color(0xfff2fefa)),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/contactUs.png",
                            color: const Color(0xfff2fefa),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icon2_order.png",
                  width: 60,
                  height: 60,
                ),
                const Text(
                  "There are no past reservations",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ])),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar({super.key});

  @override
  State<NestedTabBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NestedTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: const Text('Upcoming'),
                ),
              ),
              Tab(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: const Text('Past'),
                ),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/icon1_order.png",
                    width: 60,
                    height: 60,
                  ),
                  const Text(
                    "There are no past orders",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/icon2_order.png",
                width: 60,
                height: 60,
              ),
              const Text(
                "There are no past reservations",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
