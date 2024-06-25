import 'package:flutter/material.dart';

import 'transaction_item_widget.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 12),
          child: const TransactionItem(
            transactionName: "Cash Withdrawal",
            date: "13 Apr, 2022 ",
            amount: r"$20,129",
            amountColor: Color(0xffF3735E),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 12),
          child: const TransactionItem(
            transactionName: "Landing Page project",
            date: "13 Apr, 2022 at 3:30 PM",
            amount: r"$20,129",
            amountColor: Color(0xff7DD97B),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 12),
          child: const TransactionItem(
            transactionName: "Juni Mobile App project",
            date: "13 Apr, 2024 at 2:15 AM",
            amount: r"$20,129",
            amountColor: Color(0xff7DD97B),
          ),
        ),
      ],
    );
  }
}
