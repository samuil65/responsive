import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/styles/app_styles.dart';
import 'package:responsive/widgets/dots_indicator.dart';
import 'package:responsive/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Cards', style: AppStyles.styleSemiBold20(context)),
        Gap(20),
        MyCardsPageView(pageController: pageController),
        Gap(20),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
