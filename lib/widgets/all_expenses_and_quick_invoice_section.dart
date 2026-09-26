import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/widgets/all_expenses.dart';
import 'package:responsive/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [AllExpenses(), Gap(24), QuickInvoice()]);
  }
}
