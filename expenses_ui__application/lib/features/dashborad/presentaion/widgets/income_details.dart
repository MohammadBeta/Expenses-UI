import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/app_styles.dart';
import '../../../../core/utilis/constatnts/global.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: incomesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: [
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                    color: incomesList[index].color,
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                incomesList[index].incomeTitle,
                style: AppStyles.styleRegular16,
              ),
              const Expanded(child: SizedBox()),
              Text(
                "${incomesList[index].rate.toString()}%",
                style: AppStyles.styleMedium16,
              )
            ],
          ),
        );
      },
    );
  }
}
