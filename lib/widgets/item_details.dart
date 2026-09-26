import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive/models/items_details_model.dart';
import 'package:responsive/utils/styles/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemsDetailsModel});
  final ItemsDetailsModel itemsDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemsDetailsModel.dotImage),
      title: Text(
        itemsDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemsDetailsModel.percentage,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
