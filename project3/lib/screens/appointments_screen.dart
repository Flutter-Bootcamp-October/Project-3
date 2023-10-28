import 'package:flutter/material.dart';
import 'package:project3/screens/past_Screen.dart';
import 'package:project3/screens/upcoming_screen.dart';

import '../appointment_widgets/app_bar_appointmant.dart';
import '../appointment_widgets/toggle_switch.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: AppBarAppointmant(),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(45.0),
                child: ToggleSwitch(),
              ),
            ),
            body: TabBarView(
              children: [UpcomingScreen(), PastScreen()],
            )),
      ),
    );
  }
}
