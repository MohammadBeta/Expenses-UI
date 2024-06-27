import 'package:flutter/material.dart';

import '../../../../../core/utilis/constatnts/app_styles.dart';

class QuickInvoicHeader extends StatelessWidget {
  const QuickInvoicHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 18,
              color: Color(0xff4EB7F2),
            ))
      ],
    );
  }
}
