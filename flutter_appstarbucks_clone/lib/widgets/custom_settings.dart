import 'package:flutter/material.dart';

class BuildSettingItem extends StatelessWidget {
  const BuildSettingItem({
    Key? key,
    required this.text,
    this.iconData,
    this.fontSize,
    this.textColor,
    this.fontWeight,
  });

  final String text;
  final IconData? iconData;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize:
                  fontSize, 
              color:
                  textColor, 
              fontWeight:
                  fontWeight, 
            ),
          ),
          if (iconData != null) Icon(iconData),
        ],
      ),
    );
  }
}
