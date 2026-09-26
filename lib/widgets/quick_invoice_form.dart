import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/custom_button.dart';
import 'package:responsive/widgets/custom_text_button.dart';
import 'package:responsive/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TitleTextField(
                title: 'Customer email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TitleTextField(title: 'Item amount', hintText: 'USD'),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(child: CustomTextButton()),
            Gap(16),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
