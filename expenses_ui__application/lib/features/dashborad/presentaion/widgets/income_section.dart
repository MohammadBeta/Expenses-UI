
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/income_chart.dart';
import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AllExpensesHeader(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: IncomeChart(),
        )
      ],
    );
  }
}
