import 'package:flutter/material.dart';
import 'package:jahez/constrents/sizes.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Explore",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 360,
                  child: TextField(
                      decoration: InputDecoration(
                          fillColor: const Color(0xfffafafa),
                          filled: true,
                          hintText: "Search",
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintStyle: const TextStyle(fontSize: 18),
                          prefixIcon: const Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35.0),
                  child: Text(
                    "World Pasta Day",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                higth10,
                ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset("assets/image/IMG_3467.PNG")),
              ],
            ),
          ),
          higth8,
          const Divider(
            thickness: 13,
            color: Color(0xfff3f3f4),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Shop Now with PIK 💜",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "Discover the offers with Prompt delivery 💜😍",
                  style: TextStyle(color: Color(0xff8f8e94), fontSize: 14),
                ),
                higth10,
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/image/explore1.jpeg",
                        width: 165,
                        height: 165,
                      ),
                    ),
                    width8,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/image/explore2.jpeg",
                        width: 165,
                        height: 165,
                      ),
                    ),
                  ],
                ),
                higth8,
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/image/explore3.jpeg",
                        width: 165,
                        height: 165,
                      ),
                    ),
                    width8,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/image/explore4.jpeg",
                        width: 165,
                        height: 165,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          higth8,
          const Divider(
            thickness: 13,
            color: Color(0xfff3f3f4),
          ),
        ],
      ),
    );
  }
}
