import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _DetailsIncomeChartState();
}

class _DetailsIncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieData()));
  }

  PieChartData getPieData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? null : AppColor.whiteColor),
          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
          title: activeIndex == 1 ? 'Design service' : '25%',
          radius: activeIndex == 1 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? null : AppColor.whiteColor),
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? 'Design service' : '20%',
          radius: activeIndex == 2 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? null : AppColor.whiteColor),
          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.8 : null,
          title: activeIndex == 3 ? 'Design service' : '22%',
          radius: activeIndex == 3 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? null : AppColor.whiteColor),
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
