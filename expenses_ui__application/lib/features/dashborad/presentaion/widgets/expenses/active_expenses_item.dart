import 'package:expenses_ui__application/features/dashborad/data/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.expenseModel});

  final ExpenseModel expenseModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.1),
                    child: SvgPicture.asset(
                      expenseModel.image,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              const RotatedBox(
                quarterTurns: 2,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          FittedBox(
            child: Text(
              expenseModel.title,
              style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Text(
              expenseModel.date,
              style: AppStyles.styleRegular14.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            child: Text(
              expenseModel.price,
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
