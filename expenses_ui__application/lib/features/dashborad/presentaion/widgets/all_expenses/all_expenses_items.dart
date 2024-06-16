import 'package:expenses_ui__application/core/utilis/constatnts/app_images.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/all_expenses/un_active_expenses_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/expense_model.dart';
import 'active_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({
    super.key,
  });

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int _selectedIndex = 0;
  final List<ExpenseModel> expensesItems = [
    const ExpenseModel(
        image: AppImages.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    const ExpenseModel(
        image: AppImages.imagesBalance,
        title: "Income",
        date: "April 2022",
        price: r"$33,200"),
    const ExpenseModel(
        image: AppImages.imagesBalance,
        title: "Expenses",
        date: "April 2022",
        price: r"$5,000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: expensesItems.asMap().entries.map((e) {
      return Expanded(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = e.key;
                });
              },
              child: e.key == _selectedIndex
                  ? ActiveExpensesItem(
                      expenseModel: e.value,
                    )
                  : UnActiveExpensesItem(expenseModel: e.value)));
    }).toList());
  }
}
