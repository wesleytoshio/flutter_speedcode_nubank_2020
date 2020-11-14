import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';
import 'package:nubank_speed_code/utils/nu_icons.dart';

import 'bottom_menu_item_widget.dart';

class BottomMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (notification) {
        notification.disallowGlow();
      },
      child: Container(
        height: 130,
        color: Color(primaryColor),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            BottomMenuItemWidget(
              iconData: NuIcons.pix,
              label: 'Pix',
              isFirst: true,
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.barcode,
              label: 'Pagar',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.add_user,
              label: 'Indicar\namigos',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.transfer,
              label: 'Transferir',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.deposit,
              label: 'Depositar',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.card,
              label: 'Cartão\nVirtual',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.smartphone,
              label: 'Recarga de\nCelular',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.unlock,
              label: 'Bloquear\ncartão',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.demand,
              label: 'Cobrar',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.split_value,
              label: 'Dividir\nvalor',
            ),
            BottomMenuItemWidget(
              iconData: NuIcons.help,
              label: 'Me ajuda',
              isLast: true,
            ),
          ],
        ),
      ),
    );
  }
}
