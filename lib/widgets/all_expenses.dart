import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/custom_background_container.dart';
import 'package:responsive/widgets/all_expenses_header.dart';
import 'package:responsive/widgets/all_expenses_body.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [AllExpensesHeader(), Gap(16), AllExpensesBody()],
      ),
    );
  }
}
