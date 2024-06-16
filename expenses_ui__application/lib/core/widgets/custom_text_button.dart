import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.child,
    this.backgroundColor = const Color(0xff4EB7F2),
  });

  final Widget child;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size.fromHeight(60),
          backgroundColor:backgroundColor),
      onPressed: () {},
      child: child,
    );
  }
}
