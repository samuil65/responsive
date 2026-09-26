import 'package:flutter/material.dart';
import 'package:responsive/utils/styles/app_color.dart';

abstract class AppStyles {
  //*12*//
  static const TextStyle styleRegular12 = TextStyle(
    color: AppColor.greyColor,
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  //*14*//
  static const TextStyle styleRegular14 = TextStyle(
    color: AppColor.greyColor,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  //*16*//
  static const TextStyle styleRegular16 = TextStyle(
    color: AppColor.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleMedium16 = TextStyle(
    color: AppColor.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    color: AppColor.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold16 = TextStyle(
    color: AppColor.lightBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  //*18*//
  static const TextStyle styleSemiBold18 = TextStyle(
    color: AppColor.whiteColor,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  //*20*//
  static const TextStyle styleMedium20 = TextStyle(
    color: AppColor.whiteColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleSemiBold20 = TextStyle(
    color: AppColor.darkBlueColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  //*24*//
  static const TextStyle styleSemiBold24 = TextStyle(
    color: AppColor.lightBlueColor,
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
