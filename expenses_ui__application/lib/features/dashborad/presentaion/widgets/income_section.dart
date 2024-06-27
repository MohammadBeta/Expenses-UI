import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/income_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AllExpensesHeader(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: !(MediaQuery.sizeOf(context).width <= 1300 &&
                  MediaQuery.sizeOf(context).width >= 1200)
              ? const IncomeChartWithDetails()
              : const IncomeChartHiddenDetails(),
        )
      ],
    );
  }
}
