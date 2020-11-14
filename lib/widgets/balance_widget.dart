import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/nu_icons.dart';

class BalanceWidget extends StatelessWidget {
  final bool showingValues;

  const BalanceWidget({Key key, this.showingValues = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    NuIcons.money,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Conta',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Saldo disponível',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              showingValues
                  ? Text(
                      'R\$ 18,53',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  : Container(
                      height: 50,
                      color: Colors.grey[200],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
