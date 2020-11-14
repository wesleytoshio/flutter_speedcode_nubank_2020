import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';

class BottomMenuItemWidget extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool isFirst;
  final bool isLast;

  const BottomMenuItemWidget(
      {Key key,
      this.iconData,
      this.label,
      this.isFirst = false,
      this.isLast = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: isFirst ? paddingH : 5,
        right: isLast ? paddingH : 5,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          width: 100,
          color: Colors.white.withOpacity(0.15),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              Text(
                label,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
