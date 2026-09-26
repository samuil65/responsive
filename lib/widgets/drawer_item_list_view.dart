import 'package:flutter/material.dart';
import 'package:responsive/models/drawer_item_model.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboardIcon),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesTransactionIcon,
    ),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatisticsIcon),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletIcon),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesInvestmentsIcon,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: index == activeIndex,
            ),
          ),
        );
      },
    );
  }
}
