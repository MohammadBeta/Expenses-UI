import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/custom_drawer/custom_drawer.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/expenses.dart';
import 'package:flutter/material.dart';

import '../card_and_transations_section.dart';
import '../my_card_section.dart';

class DesktopDashboradView extends StatelessWidget {
  const DesktopDashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(flex: 4, child: Expenses()),
        Expanded(flex: 3, child: CardAndTransationsSection()),
      ],
    );
  }
}
