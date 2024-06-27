import 'package:flutter/material.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';
import '../../../../../core/widgets/custom_background_container.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        CustomBackgroundContainer(
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              SizedBox(
                width: 18,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff064061),
                  size: 24,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
