import 'package:flutter/material.dart';
import 'package:nubank_speed_code/utils/nu_icons.dart';

class GiftCardWidget extends StatelessWidget {
  final bool showingValues;

  const GiftCardWidget({Key key, this.showingValues = false}) : super(key: key);
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
                    NuIcons.gift,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rewards',
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
                  'Total',
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
            '850 pts',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
              text: 'Você acumulou ',
              style: TextStyle(fontSize: 16, color: Colors.black45),
              children: [
                TextSpan(
                  text: '525',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(text: ' para este mês.')
              ]),
        )
      ],
    );
  }
}
