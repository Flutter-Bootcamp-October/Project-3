import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../appointment_widgets/appointment_page.dart';
import '../myFamily_widegts/button_widget.dart';
import '../myFamily_widegts/images_widget.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImagesWidget(
            ulimage: 'assets/221BE55C-77C4-4084-8FE2-F8EC9144C0AE.PNG',
          ),
          SizedBox(
            height: 20,
          ),
          AppointmentPage(
            text: 'You have no appointments',
          ),
          SizedBox(
            height: 50,
          ),
          ButtonWidget(
            text: 'Book new appointment',
          )
        ],
      ),
    );
  }
}
