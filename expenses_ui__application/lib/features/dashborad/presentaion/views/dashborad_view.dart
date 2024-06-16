import 'package:expenses_ui__application/features/dashborad/presentaion/widgets/layouts/desktop_dashborad_view.dart';
import 'package:flutter/material.dart';
import '../widgets/layouts/adaptive_dashborad_layout.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DashboradAdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DesktopDashboradView(),
    ));
  }
}
