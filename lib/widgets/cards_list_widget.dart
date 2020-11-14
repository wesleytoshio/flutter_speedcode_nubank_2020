import 'package:flutter/material.dart';

import 'balance_widget.dart';
import 'credit_card_widget.dart';
import 'gift_card_widget.dart';

class CardsListWidget extends StatelessWidget {
  final bool showingValues;

  const CardsListWidget({Key key, this.showingValues = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CreditCardWidget(
            showingValues: showingValues,
          ),
          BalanceWidget(
            showingValues: showingValues,
          ),
          GiftCardWidget(
            showingValues: showingValues,
          )
        ],
      ),
    );
  }
}
