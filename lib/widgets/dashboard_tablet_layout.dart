import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_drawer.dart';
import 'package:responsive/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: DashboardMobileLayout(),
          ),
        ),
        // Gap(24),
      ],
    );
  }
}
