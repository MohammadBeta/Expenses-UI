import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/card_and_transations_section.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/expenses.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/layouts/desktop_dashborad_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer/custom_drawer.dart';
import '../widgets/layouts/adaptive_dashborad_layout.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DashboradAdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const TabletDashordView(),
      desktopLayout: (context) => const DesktopDashboradView(),
    ));
  }
}

class TabletDashordView extends StatelessWidget {
  const TabletDashordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Expenses(),
                  CardAndTransationsSection(),
                ],
              ),
            )),
      ],
    );
  }
}
