import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:assignment/widgets/app_text.dart';
import 'package:assignment/widgets/radio_select.dart';
import 'package:flutter/material.dart';

class AppSettingTab extends StatefulWidget {
  const AppSettingTab({
    super.key,
  });

  @override
  State<AppSettingTab> createState() => _AppSettingTabState();
}

bool light = true;

String? selected;

class _AppSettingTabState extends State<AppSettingTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          height12,
          Text(
            "العناوين",
            style: whiteBold18,
          ),
          height16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                  value: light,
                  activeColor: white,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  }),
              Text(
                "عرض بلغتك",
                style: white18,
              ),
            ],
          ),
          Text(
            "سيتم عرض العناوين باللغة الإنجليزية بشكل افتراضي",
            style: grey16,
          ),
          const Divider(
            color: grey,
          ),
          height12,
          AppText(
            'بشكل افتراضي , يتم عرض التعليقات باللغة الإنجليزية ولغة جهازك',
            textArrow: ' حدد لغات التعليق',
            titles: 'التعليقات',
          ),
          const Divider(
            color: grey,
          ),
          AppText('', titles: 'الإشعارات', textArrow: 'حدد أي تنبهات تتلقاها'),
          const SizedBox(
            height: 2,
          ),
          const Divider(
            color: grey,
          ),
          Text(
            "النسق",
            style: whiteBold18,
          ),
          height12,
          RadioSelect(
            color: white,
            text: 'مزامنة التطبيق تلقائيا مع إعدادات الجهاز',
          ),
          height8,
          RadioSelect(
            text: 'الوضع الفاتح',
          ),
          height8,
          RadioSelect(
            text: 'الوضع الداكن',
          ),
          height8,
          const Divider(
            color: grey,
          ),
          height8,
          AppText('',
              titles: 'الترشيحات',
              textArrow: 'إدارة البرامج والأفلام غير المحبوبة'),
          const Divider(
            color: grey,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20)),
              ),
              backgroundColor: amber,
              fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 1),
            ),
            child: const Text(
              'مسح ذاكرة التخزين المؤقت ',
              style: TextStyle(color: black),
            ),
          )),
          const Center(
            child: Text(
              'الإصدار 2023101601 ,9.8.0',
              style: TextStyle(color: white),
            ),
          ),
        ],
      ),
    );
  }
}
