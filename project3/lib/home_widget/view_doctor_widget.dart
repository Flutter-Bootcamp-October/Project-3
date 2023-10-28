import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/custom_colors.dart';

class ViewDoctorWidget extends StatelessWidget {
  const ViewDoctorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Container(
              width: 340,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffE7EEF8),
                border: Border.all(width: .5, color: Color(0xffCCD4E1)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Doctor for every family",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "View More",
                          style: TextStyle(color: Color(0xff1775AB)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward_outlined,
                            color: Color(0xff1775AB))
                      ],
                    ),
                    Text(
                      "My care team",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: 130,
                height: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(width: 1, color: Color(0xffCCD4E1)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 20),
                  child: Text("ABDUILRAHM..."),
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xffECF0F9),
                ),
              ),
            ),
            Positioned(
                child: Icon(
              Icons.person,
              color: secondary,
              size: 40,
            ))
          ]),
    );
  }
}
