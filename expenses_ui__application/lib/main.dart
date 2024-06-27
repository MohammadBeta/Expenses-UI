import 'package:device_preview/device_preview.dart';
import 'package:expenses_ui__application/core/utilis/constatnts/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/dashborad/presentaion/views/dashborad_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const DashboradApp(), // Wrap your app
      ),
    );

class DashboradApp extends StatelessWidget {
  const DashboradApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: DashboradView(),
    );
  }
}
