import 'dart:developer';

import 'package:expenses_ui__application/core/utilis/constatnts/size_config.dart';
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
        if (constraints.maxWidth > SizeConfig.desktop) //Desktop
        {
          return desktopLayout(context);
        } else if (constraints.maxWidth > SizeConfig.tablet) //Tablet
        {
          return tabletLayout(context);
        } else {
          return mobileLayout(context);
        }
      },
    );
  }
}
