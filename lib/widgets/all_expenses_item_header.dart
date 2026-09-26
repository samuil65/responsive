import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive/utils/styles/app_color.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
    this.iconColor,
  });

  final String image;
  final Color? imageBackgroundColor, imageColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? AppColor.whiteColor,
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              color: imageColor ?? AppColor.lightBlueColor,
            ),
          ),
        ),
        Spacer(),
        Icon(Icons.chevron_right, color: iconColor ?? AppColor.darkBlueColor),
      ],
    );
  }
}
