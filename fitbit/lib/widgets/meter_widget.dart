import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/models/meter_model.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MeterWidget extends StatelessWidget {
  const MeterWidget({super.key, required this.scale});

  final Meter scale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            RotatedBox(
              quarterTurns: 1,
              child: PieChart(
                chartType: ChartType.ring,
                ringStrokeWidth: scale.isMain ? 10 : 6,
                dataMap: {
                  scale.label: (scale.percent * 100) / scale.total,
                  "total": 100
                },
                chartRadius: scale.isMain
                    ? context.getWidithSizing(number: 0.4)
                    : context.getWidithSizing(number: 0.16),
                colorList: const [Color(0xff008673), Color(0xffc8e0db)],
                chartValuesOptions: const ChartValuesOptions(
                    showChartValuesInPercentage: false, showChartValues: false),
                legendOptions: const LegendOptions(
                    showLegends: false, showLegendsInRow: false),
              ),
            ),
            ImageIcon(
              AssetImage(scale.icon),
              color: const Color(0xff008673),
              size: scale.isMain ? 65 : 21,
            )
          ]),
          Text(
            scale.percent.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: scale.isMain ? 40 : 20,
            ),
          ),
          Text(
            scale.label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
