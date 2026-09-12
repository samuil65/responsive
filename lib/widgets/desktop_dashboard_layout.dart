import 'package:flutter/material.dart';
import 'package:responsive/widgets/custom_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()), // Custom drawer widget
        ],
      ),
    );
  }
}
