import 'package:expenses_ui__application/core/utilis/constatnts/size_config.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/card_and_transations_section.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/custom_drawer/custom_drawer.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/expenses.dart';
import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/layouts/desktop_dashborad_view.dart';
import 'package:flutter/material.dart';

import '../widgets/layouts/adaptive_dashborad_layout.dart';
import '../widgets/layouts/tablet_dashborad_view.dart';

class DashboradView extends StatelessWidget {
  DashboradView({super.key});

  final  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: SizeConfig.width < SizeConfig.tablet
            ? AppBar(
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)))
            : null,
        body: DashboradAdaptiveLayout(
          mobileLayout: (context) => const MobileDashboardView(),
          tabletLayout: (context) => const TabletDashordView(),
          desktopLayout: (context) => const DesktopDashboradView(),
        ));
  }
}

class MobileDashboardView extends StatelessWidget {
  const MobileDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Expenses(),
          CardAndTransationsSection(),
        ],
      ),
    );
  }
}
