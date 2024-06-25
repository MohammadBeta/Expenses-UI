import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/global.dart';
import 'income_details.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(sectionsSpace: 0, sections: [
                  ...List.generate(
                    incomesList.length,
                    (index) {
                      return PieChartSectionData(
                          showTitle: false,
                          color: incomesList[index].color,
                          value: incomesList[index].rate);
                    },
                  )
                ]),
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          const Expanded(
            flex: 2,
            child: IncomeDetails(),
          )
        ],
      ),
    );
  }
}
