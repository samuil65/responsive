import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/models/user_info_model.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userInfoMode: UserInfoModel(
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
              image: SvgPicture.asset(Assets.imagesUser3),
            ),
          ), // User info list tile widget
        ],
      ),
    );
  }
}
