import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_header.dart';
import 'income_chart.dart';
import 'income_section.dart';
import 'my_card_section.dart';

class CardAndTransationsSection extends StatelessWidget {
  const CardAndTransationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 12, right: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardSection(),
            Divider(
              height: 20,
            ),
            TransactionSection(),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 300, child: IncomeSection()),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
