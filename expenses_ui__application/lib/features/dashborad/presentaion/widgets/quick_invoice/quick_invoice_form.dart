import 'package:expenses_ui__application/core/utilis/constatnts/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_button.dart';
import 'quick_invoice_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: QuickInvoiceField(
              hintText: "Customer Name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: QuickInvoiceField(
              hintText: "Customer Email",
            )),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
                child: QuickInvoiceField(
              hintText: "Item Name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: QuickInvoiceField(
              hintText: "Item Mount",
            )),
          ],
        ),
        const SizedBox(
          width: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(
                backgroundColor: Colors.white,
                child: Text(
                  "Add more details",
                  style: AppStyles.styleSemiBold18
                      .copyWith(color: const Color(0xff4EB7F2)),
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            const Expanded(
              child: CustomTextButton(
                child: Text(
                  "Send Money",
                  style: AppStyles.styleSemiBold18,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
