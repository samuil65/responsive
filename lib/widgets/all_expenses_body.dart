import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/models/all_expenses_item_model.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    AllExpensesItemModel(
      image: Assets.imagesBalanceIcon,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncomeIcon,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpensesIcon,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        Gap(8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        Gap(8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  // method to update index for switch from inactive to active state of the item
  void updateIndex(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
