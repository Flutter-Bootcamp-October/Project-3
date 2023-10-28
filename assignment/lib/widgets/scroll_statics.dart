import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/widgets/container_statics.dart';
import 'package:flutter/material.dart';

class ScrollStatics extends StatelessWidget {
  const ScrollStatics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ContainerStatics(
              name: 'أفلام تمت مشاهدتها',
              count: '323',
              hour: '',
              month: '',
              timeday: '',
              timehour: '',
              timemonth: ''),
          width8,
          ContainerStatics(
              name: 'وقت الافلام',
              count: '14',
              hour: '16',
              month: '0',
              timeday: 'أيام',
              timehour: 'الساعات',
              timemonth: 'الشهور'),
          width8,
          ContainerStatics(
              name: 'الحلقات المشاهدة مسبقا',
              count: '5915',
              hour: '',
              month: '',
              timeday: '',
              timehour: '',
              timemonth: ''),
          width8,
          ContainerStatics(
              name: ' TV time',
              count: '9',
              hour: '11',
              month: '4',
              timeday: 'أيام',
              timehour: 'الساعات',
              timemonth: 'الشهور'),
          width8,
        ],
      ),
    );
  }
}
