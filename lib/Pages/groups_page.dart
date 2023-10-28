import 'package:flutter/material.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/groups.jpeg",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Stay connected with a community",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you're added to will appear here.",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See example communities >",
                style: TextStyle(fontSize: 20, color: Color(0xFF075E55)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the radius to your preference
              child: Container(
                color: Color(0xFF075E55),
                child: TextButton(
                  onPressed: () {
                    // Add your login functionality here
                  },
                  child: const Text(
                    "              Start your community              ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
