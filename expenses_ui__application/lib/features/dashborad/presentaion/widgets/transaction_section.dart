import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/app_styles.dart';
import 'transaction_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              "See all",
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 220,
          child: TransactionListView(),
        )
      ],
    );
  }
}
