
import 'package:flutter/material.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';

class QuickInvoiceField extends StatelessWidget {
  const QuickInvoiceField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: AppStyles.styleMedium16,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              hintText: "Type ${hintText.toLowerCase()}",
              hintStyle: AppStyles.styleRegular16.copyWith(color: Colors.grey),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        )
      ],
    );
  }
}
