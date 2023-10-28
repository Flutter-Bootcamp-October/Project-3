import 'package:assignment/colors/app_color.dart';
import 'package:assignment/colors/sizedd.dart';
import 'package:assignment/colors/text_font.dart';
import 'package:flutter/material.dart';

class AccountSettinge extends StatefulWidget {
  const AccountSettinge({
    super.key,
  });

  @override
  State<AccountSettinge> createState() => _AccountSettingeState();
}

class _AccountSettingeState extends State<AccountSettinge> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("تعريف", style: whiteBold18),
          height16,
          Text("إسم المستخدم", style: white18),
          Text("1234567890", style: blue18),
          height24,
          Text("البريد الإلكتروني", style: white18),
          Text("examble@anyone.com", style: blue18),
          height24,
          Text("هوية المستخدم", style: white18),
          Text("1234567890", style: grey18),
          height24,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(
              Icons.arrow_back_ios_new,
              color: white,
            ),
            Text("تغير كلمة المرور", style: white18)
          ]),
          const Divider(
            color: white,
          ),
          height12,
          Text("شبكات اجتماعية", style: whiteBold18),
          height12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                color: white,
              ),
              Text(
                "حرر الحسابات المرتبطة",
                style: white18,
              ),
            ],
          ),
          height12,
          const Divider(
            color: white,
          ),
          height24,
          Text(
            "خصوصية ",
            style: whiteBold18,
          ),
          height24,
          Text(
            "اقرأ الخصوصية والقسم القانوني",
            style: white18,
          ),
          height24,
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
                "تعيين ملف التعريف على الخاص",
                style: white18,
              ),
            ],
          ),
          height8,
          Text(
            'إذا كان ملفك الشخصي خاصا فيجيب أن توافي على طلبات المتابعة فقط متابعيك من يمكنهم رؤية نشاطك',
            style: grey16,
          ),
          const Divider(
            color: white,
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
              'تسجيل خروج',
              style: TextStyle(color: black),
            ),
          )),
          height12,
          Center(
            child: InkWell(
                child: Text(
              ' حذف الحساب',
              style: blue18,
            )),
          ),
          height24
        ],
      ),
    );
  }
}
