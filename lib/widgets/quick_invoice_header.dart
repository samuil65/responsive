import 'package:flutter/material.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        Spacer(),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Icon(Icons.add, color: AppColor.lightBlueColor, size: 20),
        ),
      ],
    );
  }
}
