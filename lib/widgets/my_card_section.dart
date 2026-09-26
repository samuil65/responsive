import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/constants/custom_background_container.dart';
import 'package:responsive/utils/styles/app_styles.dart';
import 'package:responsive/widgets/custom_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Cards', style: AppStyles.styleMedium16),
          Gap(12),
          CustomCard(),
        ],
      ),
    );
  }
}
