import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/constants.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'custom_divider_widget.dart';
import 'settings_item_widget.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: QrImage(
            data: 'wesley',
            version: QrVersions.auto,
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.white,
            foregroundColor: Color(primaryColor),
            size: 120,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Agência 001 Conta 000000000-0\nBanco 260 - Nu Pagamentos S.A',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15, height: 1.1),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Me Ajuda',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Perfil',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Configurar conta',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Configurar Cartão',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Pedir conta PJ',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Participe de nossa promo',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Configurar notificações',
        ),
        CustomDividerWidget(),
        SettingsItemWidget(
          label: 'Configurações do app',
        ),
        CustomDividerWidget(),
        Container(
          margin: EdgeInsets.all(paddingH),
          height: 45,
          width: double.infinity,
          child: OutlineButton(
            onPressed: () {
              print('press');
            },
            borderSide: BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'SAIR DO APP',
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
