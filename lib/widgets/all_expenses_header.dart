import 'package:flutter/material.dart';
import 'package:responsive/utils/constants/custom_dropdown.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Spacer(),
        CustomDropdown<String>(
          value: 'This Month',
          items: ['This Month', 'Last Month', 'This Year'],
          labelBuilder: (value) => value,
          onChanged: (value) {
            // Handle dropdown selection change
          },
        ),
      ],
    );
  }
}
