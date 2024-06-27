import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';
import '../../../data/models/expense_model.dart';
import '../../../../../core/widgets/custom_background_container.dart';

class UnActiveExpensesItem extends StatelessWidget {
  const UnActiveExpensesItem({super.key, required this.expenseModel});
  final ExpenseModel expenseModel;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
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
                      colorFilter: const ColorFilter.mode(
                          Color(0xff4EB7F2), BlendMode.srcIn),
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
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            child: Text(
              expenseModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xffAAAAAA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            child: Text(
              expenseModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
