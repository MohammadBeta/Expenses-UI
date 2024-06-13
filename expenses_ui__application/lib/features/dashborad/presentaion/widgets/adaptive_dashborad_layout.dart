import 'package:flutter/material.dart';

class DashboradAdaptiveLayout extends StatelessWidget {
  const DashboradAdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) //Mobile
        {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) //Tablet
        {
          return tabletLayout(context);
        } else //Desktop
        {
          return desktopLayout(context);
        }
      },
    );
  }
}
