import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/models/drawer_item_model.dart';
import 'package:responsive/models/user_info_model.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/widgets/active_and_inActive_item.dart';
import 'package:responsive/widgets/drawer_item_list_view.dart';
import 'package:responsive/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: AppColor.whiteColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Gap(35),
                UserInfoListTile(
                  userInfoMode: UserInfoModel(
                    title: 'Lekan Okeowo',
                    subTitle: 'demo@gmail.com',
                    image: Assets.imagesUser1,
                  ),
                ),
                Gap(15),
              ],
            ),
          ),

          DrawerItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Gap(20),
                Spacer(),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Settings',
                    image: Assets.imagesSettingIcon,
                  ),
                ), //Add a spacer to push the user info list tile to the bottom
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout Account',
                    image: Assets.imagesLogoutIcon,
                  ),
                ),
                Gap(48),
              ],
            ),
          ),

          // User info list tile widget
        ],
      ),
    );
  }
}
