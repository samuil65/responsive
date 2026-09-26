import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/widgets/income_section.dart';
import 'package:responsive/widgets/my_card_and_transaction_history_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Column(
        children: [
          Gap(40),
          MyCardAndTransactionHistorySection(),
          Gap(24),
          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}
