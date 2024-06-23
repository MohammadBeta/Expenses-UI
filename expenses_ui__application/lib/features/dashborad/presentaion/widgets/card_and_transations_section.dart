import 'package:flutter/material.dart';

import 'my_card_section.dart';
import 'transaction_section.dart';

class CardAndTransationsSection extends StatelessWidget {
  const CardAndTransationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(
            height: 40,
          ),
          TransactionSection()
        ],
      ),
    );
  }
}
