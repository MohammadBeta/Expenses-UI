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
        Expanded(flex: 4, child: SizedBox()),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
