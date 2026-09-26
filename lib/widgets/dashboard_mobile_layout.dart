import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive/widgets/income_section.dart';
import 'package:responsive/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              children: [
                Gap(24),
                MyCardAndTransactionHistorySection(),
                Gap(24),
                IncomeSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
