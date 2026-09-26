import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/custom_background_container.dart';
import 'package:responsive/widgets/income_header.dart';
import 'package:responsive/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [IncomeHeader(), Gap(16), IncomeSectionBody()]),
    );
  }
}
