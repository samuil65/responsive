import 'package:flutter/material.dart';
import 'package:responsive/models/user_info_model.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoMode});
  final UserInfoModel userInfoMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffafafa),
      elevation: 0,
      child: ListTile(
        leading: userInfoMode.image,
        title: Text(userInfoMode.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          userInfoMode.subTitle,
          style: AppStyles.styleRegular12,
        ), // User image
      ),
    );
  }
}
