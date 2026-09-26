import 'package:flutter/material.dart';
import 'package:responsive/utils/constants/responsive_font_size.dart';
import 'package:responsive/utils/styles/app_color.dart';

abstract class AppStyles {
  //*12*//
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: AppColor.greyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*14*//
  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: AppColor.greyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  //*16*//
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: AppColor.lightBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  //*18*//
  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //*20*//
  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  //*24*//
  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: AppColor.lightBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
