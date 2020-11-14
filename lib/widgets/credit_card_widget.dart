import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/nu_icons.dart';

class CreditCardWidget extends StatelessWidget {
  final bool showingValues;

  const CreditCardWidget({Key key, this.showingValues = false})
      : super(key: key);
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
                    NuIcons.card,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cartão de crédito',
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
                  'Fatura atual',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              showingValues
                  ? _infosWidget()
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

  Widget _infosWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            'R\$ 195,70',
            style: TextStyle(
              fontSize: 32,
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              'Limite disponível',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' R\$ 474,30',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        )
      ],
    );
  }
}
