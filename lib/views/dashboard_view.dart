import 'package:flutter/material.dart';
import 'package:responsive/widgets/adaptive_layout_widget.dart';
import 'package:responsive/widgets/desktop_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => Center(child: Text('Mobile Layout')),
        tabletLayout: (context) => Center(child: Text('Tablet Layout')),
        desktopLayout: (context) => DesktopDashboardLayout(),
      ),
    );
  }
}
