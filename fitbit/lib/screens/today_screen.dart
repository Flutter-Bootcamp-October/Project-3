import 'package:fitbit/global/fitbit_appbar_consts.dart';
import 'package:fitbit/consts/today_consts.dart';
import 'package:fitbit/data/data.dart';
import 'package:fitbit/models/meter_model.dart';
import 'package:fitbit/widgets/meter_widget.dart';
import 'package:fitbit/widgets/today_bottom_sheet.dart';
import 'package:fitbit/widgets/today_sleep_widget.dart';
import 'package:flutter/material.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  List<MeterWidget> meters = [];
  @override
  initState() {
    for (Map element in metersData) {
      Meter meter = Meter.fromJson(element);
      meters.add(MeterWidget(scale: meter));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarBackground,
        appBar: fitbitAppBar,
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          backgroundColor: const Color(0xffcce7df),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const TodayBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            todayListTile,
            meters[0],
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  meters[1],
                  meters[2],
                  meters[3],
                ],
              ),
            ),
            const SleepWidget()
          ],
        ));
  }
}
