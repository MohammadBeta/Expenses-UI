import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
            Expanded(child: AllExpensesItems())
          ],
        ),
      ),
    );
  }
}
