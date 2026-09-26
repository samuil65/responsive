import 'package:flutter/material.dart';
import 'package:responsive/utils/constants/adaptive_layout_widget.dart';
import 'package:responsive/utils/constants/size_config.dart';
import 'package:responsive/widgets/custom_drawer.dart';
import 'package:responsive/widgets/dashboard_desktop_layout.dart';
import 'package:responsive/widgets/dashboard_mobile_layout.dart';
import 'package:responsive/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xfffafafa),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: Color(0xfff7f9fa),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => DashboardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
