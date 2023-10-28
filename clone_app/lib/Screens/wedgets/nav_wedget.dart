import 'package:flutter/material.dart';

class ButtonNavWidget extends StatelessWidget {
  const ButtonNavWidget({
    Key? key,
    required this.icon,
    required this.label, // added parameter for label
    this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  final IconData icon;
  final String label; // This will be the text of your label
  final Function()? onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 0, // This allows the button to shrink to fit the column's width
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Shrink wrap the column
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
        children: <Widget>[
          Icon(
            icon,
            color: isSelected ? Color(0xff005497) : Color(0xff666d79),
          ),
          Text( // This Text widget displays your label
            label,
            style: TextStyle(
              color: isSelected ? Color(0xff005497) : Color(0xff666d79),fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}
