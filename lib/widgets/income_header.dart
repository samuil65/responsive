import 'package:flutter/material.dart';
import 'package:responsive/utils/constants/custom_dropdown.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
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
