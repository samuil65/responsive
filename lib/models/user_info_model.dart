import 'package:flutter_svg/flutter_svg.dart';

class UserInfoModel {
  final String title;
  final String subTitle;
  final SvgPicture image;

  UserInfoModel({
    required this.title,
    required this.image,
    required this.subTitle,
  });
}
