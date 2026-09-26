import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/size_config.dart';
import 'package:responsive/widgets/details_income_chart.dart';
import 'package:responsive/widgets/income_chart.dart';
import 'package:responsive/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1782
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DetailsIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Gap(40),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
