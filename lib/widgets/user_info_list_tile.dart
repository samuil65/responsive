import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive/models/user_info_model.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoMode});
  final UserInfoModel userInfoMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[50],
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoMode.image),
          title: Text(userInfoMode.title, style: AppStyles.styleSemiBold16),
          subtitle: Text(
            userInfoMode.subTitle,
            style: AppStyles.styleRegular12,
          ), // User image
        ),
      ),
    );
  }
}
