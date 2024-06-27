import 'package:flutter/material.dart';

import '../../../../core/utilis/constatnts/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(
      {super.key,
      required this.transactionName,
      required this.date,
      required this.amount,
      required this.amountColor});
  final String transactionName;
  final String date;
  final String amount;
  final Color amountColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        transactionName,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        date,
        style: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
      ),
      trailing: Text(
        amount,
        style: AppStyles.styleSemiBold20(context).copyWith(color: amountColor),
      ),
    );
  }
}
