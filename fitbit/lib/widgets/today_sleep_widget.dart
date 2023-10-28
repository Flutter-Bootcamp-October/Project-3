import 'package:fitbit/consts/today_consts.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class SleepWidget extends StatelessWidget {
  const SleepWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(left: 26.0, bottom: 8),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Sleep",
              textAlign: TextAlign.left,
            )),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          width: context.getWidithSizing(number: .9),
          height: context.getHeightSizing(number: 0.15),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sleepColumn,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: PieChart(
                          chartType: ChartType.ring,
                          ringStrokeWidth: 6,
                          dataMap: const {"sleep": 75, "total": 100},
                          chartRadius: context.getWidithSizing(number: 0.16),
                          colorList: const [
                            Color(0xff856baa),
                            Color(0xffe7e5ec)
                          ],
                          chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage: false,
                              showChartValues: false),
                          legendOptions: const LegendOptions(
                              showLegends: false, showLegendsInRow: false),
                        ),
                      ),
                      const ImageIcon(
                        AssetImage('lib/assets/icons/sleep.png'),
                        color: Color(0xff856baa),
                        size: 23,
                      )
                    ],
                  )
                ]),
          ),
        ),
      )
    ]);
  }
}
