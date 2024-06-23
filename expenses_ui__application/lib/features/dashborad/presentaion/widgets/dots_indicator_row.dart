import 'package:flutter/material.dart';

class DotsindicatorRow extends StatelessWidget {
  const DotsindicatorRow({super.key, required this.selectedIndex});
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(3, (index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            height: 8,
            width: index == selectedIndex ? 32 : 8,
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? const Color(0xff4EB7F2)
                    : const Color(0xffE8E8E8),
                borderRadius: BorderRadius.circular(12)),
          );
        }),
      ],
    );
  }
}
