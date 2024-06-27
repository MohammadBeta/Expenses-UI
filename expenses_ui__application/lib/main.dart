import 'package:expenses_ui__application/core/utilis/constatnts/size_config.dart';
import 'package:flutter/material.dart';

import 'features/dashborad/presentaion/views/dashborad_view.dart';

void main() {
  runApp(const DashboradApp());
}

class DashboradApp extends StatelessWidget {
  const DashboradApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboradView(),
    );
  }
}
