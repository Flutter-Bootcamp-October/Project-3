import 'package:flutter/material.dart';

extension Test on BuildContext {
  double getHeightSizing({required num number}) {
    return MediaQuery.of(this).size.height * number;
  }

  double getWidithSizing({required num number}) {
    return MediaQuery.of(this).size.width * number;
  }
}
