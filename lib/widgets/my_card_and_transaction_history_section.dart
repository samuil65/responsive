import 'package:flutter/material.dart';
import 'package:responsive/utils/constants/custom_background_container.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/widgets/my_card_section.dart';
import 'package:responsive/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const MyCardSection(),
          Divider(height: 48, color: AppColor.greyColor, thickness: .5),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
