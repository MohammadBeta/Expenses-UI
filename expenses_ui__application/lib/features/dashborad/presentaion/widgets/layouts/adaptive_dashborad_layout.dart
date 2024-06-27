import 'dart:developer';

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
        log(MediaQuery.sizeOf(context).width.toString());
        if (constraints.maxWidth < 800) //Mobile
        {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1200) //Tablet
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
