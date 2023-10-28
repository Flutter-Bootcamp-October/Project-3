import 'package:flutter/material.dart';
import 'package:jahez/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Orders",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(
                  children: const [
                    OrderItem(
                      name: 'Canton - كانتون',
                      time: '10/09/2023, 9:30 PM',
                      condition: 'Rejected',
                      conditionColor: 0xfff9ebeb,
                      conditionTextColor: 0xffc43f3f,
                    ),
                    Divider(),
                    OrderItem(
                      name: 'Kudu - كودو',
                      time: '10/20/2023, 7:30 PM',
                      condition: 'Delivered',
                      conditionColor: 0xfff1f9ea,
                      conditionTextColor: 0xff80c747,
                    ),
                    Divider(),
                    OrderItem(
                      name: 'Herfy - هرفي',
                      time: '11/09/2023, 2:00 PM',
                      condition: 'Delivered',
                      conditionColor: 0xfff1f9ea,
                      conditionTextColor: 0xff80c747,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
