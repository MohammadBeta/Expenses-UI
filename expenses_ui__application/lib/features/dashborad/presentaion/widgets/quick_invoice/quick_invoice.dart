import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_background_container.dart';
import 'latest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoicHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          SizedBox(
            height: 24,
          ),
          Divider(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
