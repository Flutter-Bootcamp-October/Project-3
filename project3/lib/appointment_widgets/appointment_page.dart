import 'package:flutter/cupertino.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text("No appointments booked yet, book an in-",
              style: TextStyle(fontSize: 16, color: Color(0xff9FB5C7))),
          Text("person or a virtual appointment with the\nright doctor. ",
              style: TextStyle(fontSize: 16, color: Color(0xff9FB5C7))),
        ],
      ),
    );
  }
}
