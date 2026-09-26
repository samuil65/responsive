import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive/widgets/custom_drawer.dart';
import 'package:responsive/widgets/my_card_section.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          Gap(32),
          Expanded(
            flex: 3,
            child: AllExpensesAndQuickInvoiceSection(),
          ), // Custom drawer widget
          Gap(20),
          Expanded(child: MyCardSection()),
        ],
      ),
    );
  }
}
