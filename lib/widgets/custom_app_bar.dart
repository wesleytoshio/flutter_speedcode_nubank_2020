import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';
import 'package:nubank_speed_code/utils/nu_icons.dart';

import 'app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onShowBalance;
  final VoidCallback onShowSettings;
  final bool showingValues;
  final bool showingSettings;

  const CustomAppBar(
      {Key key,
      this.onShowBalance,
      this.onShowSettings,
      this.showingValues = false,
      this.showingSettings = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.symmetric(horizontal: paddingH),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Olá, Wesley',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              AppBarIcon(
                icon: showingValues ? NuIcons.eye_on : NuIcons.eye_off,
                onPressed: onShowBalance,
              ),
              SizedBox(
                width: 10,
              ),
              AppBarIcon(
                icon: showingSettings ? Icons.close : NuIcons.settings,
                onPressed: onShowSettings,
              ),
            ],
          )
        ],
      ),
    );
  }
}
