import 'package:flutter/material.dart';

import 'features/dashborad/presentaion/views/dashborad_view.dart';

void main() {
  runApp(const DashboradApp());
}

class DashboradApp extends StatelessWidget {
  const DashboradApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboradView(),
    );
  }
}
