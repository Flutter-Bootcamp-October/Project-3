import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../myHealth_widgets/footer.dart';
import '../myHealth_widgets/gridViewServices.dart';
import '../myHealth_widgets/heath_id.dart';
import '../myHealth_widgets/our_partners.dart';
import '../myHealth_widgets/soft_launch.dart';
import '../data/data_sets.dart';
import '../data/model.dart';

class MayHealthScreeen extends StatelessWidget {
  const MayHealthScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Sehhaty",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SoftLaunch(),
            ),
            SizedBox(
              height: 20,
            ),
            HealthId(),
            SizedBox(
              height: 20,
            ),
            OurPartners(),
            GridViewServices(),
            SizedBox(
              height: 20,
            ),
            footer(),
          ],
        ),
      ),
    );
  }
}
