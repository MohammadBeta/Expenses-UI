import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'all_expenses/all_expenses.dart';
import 'quick_invoice/quick_invoice.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 12, right: 12),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 14,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
