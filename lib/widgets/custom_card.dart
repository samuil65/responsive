import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCard2),
            fit: BoxFit.fill,
          ),
          color: AppColor.lightBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                right: 45,
                left: 31,
                top: 5,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: AppColor.whiteColor),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: Icon(Icons.image),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(
                      context,
                    ).copyWith(color: AppColor.whiteColor),
                  ),

                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(
                      context,
                    ).copyWith(color: AppColor.whiteColor),
                  ),
                ],
              ),
            ),
            Flexible(child: Gap(26)),
          ],
        ),
      ),
    );
  }
}
