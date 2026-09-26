import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/models/user_info_model.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/utils/styles/app_styles.dart';
import 'package:responsive/widgets/user_info_list_tile.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});
  static const userInfoItems = [
    UserInfoModel(
      image: Assets.imagesUser1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesUser2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyles.styleMedium16(context)),
        Gap(12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: userInfoItems
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoMode: e)),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
