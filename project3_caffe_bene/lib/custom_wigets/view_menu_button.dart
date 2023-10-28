
import 'package:flutter/material.dart';
import 'package:project3_caffe_bene/screens/menu_screen.dart';

class viewMenuButton extends StatelessWidget {
  const viewMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MenuScreen())),
        child: const viewMenuContainer());
  }
}

class viewMenuContainer extends StatelessWidget {
  const viewMenuContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25,
      width: 100,
      decoration: BoxDecoration(
          color: const Color(0xff6f584d), borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'View menu',
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }
}
