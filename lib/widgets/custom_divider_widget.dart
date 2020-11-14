import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';

class CustomDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      margin: EdgeInsets.symmetric(horizontal: paddingH),
      color: Colors.white.withOpacity(0.7),
    );
  }
}
