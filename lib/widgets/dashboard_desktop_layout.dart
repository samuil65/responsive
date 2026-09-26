import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive/widgets/custom_drawer.dart';
import 'package:responsive/widgets/my_card_and_transaction_and_income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 32),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ), // Custom drawer widget
                    Gap(32),
                    Expanded(
                      flex: 2,
                      child: MyCardAndTransactionAndIncomeSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
