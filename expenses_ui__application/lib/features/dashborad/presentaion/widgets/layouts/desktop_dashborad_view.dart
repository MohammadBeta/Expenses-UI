import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopDashboradView extends StatelessWidget {
  const DesktopDashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(flex: 4, child: Expenses()),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
AllExpenses()
    ],);
  }
}

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}