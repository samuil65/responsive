import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_styles.dart';
import 'package:responsive/widgets/transaction_history_header.dart';
import 'package:responsive/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: AppColor.greyColor),
        ),
        Gap(16),
        TransactionHistoryListView(),
      ],
    );
  }
}
