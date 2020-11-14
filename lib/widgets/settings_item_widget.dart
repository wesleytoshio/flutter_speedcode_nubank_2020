import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';

class SettingsItemWidget extends StatelessWidget {
  final label;

  const SettingsItemWidget({Key key, @required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(paddingH),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
