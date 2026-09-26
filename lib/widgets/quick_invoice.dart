import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/custom_background_container.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/widgets/latest_transactions.dart';
import 'package:responsive/widgets/quick_invoice_form.dart';
import 'package:responsive/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Gap(12),
          LatestTransactions(),
          Divider(height: 48, color: AppColor.darkBlueColor),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
