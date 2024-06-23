import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_header.dart';
import 'my_card_section.dart';
import 'transaction_section.dart';

class CardAndTransationsSection extends StatelessWidget {
  const CardAndTransationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 12, right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(
            height: 40,
          ),
          TransactionSection(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: IncomeSection()),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

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

class IncomeChart extends StatelessWidget {
  const IncomeChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: PieChart(
            PieChartData(sectionsSpace: 0, sections: [
              PieChartSectionData(color: Colors.black),
              PieChartSectionData(color: Colors.blue),
              PieChartSectionData(color: Colors.black),
              PieChartSectionData(color: Colors.blue),
            ]),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        )
      ],
    );
  }
}
