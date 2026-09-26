import 'package:flutter/material.dart';
import 'package:responsive/models/items_details_model.dart';
import 'package:responsive/utils/styles/app_images.dart';
import 'package:responsive/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemsDetailsModel(
      dotImage: Assets.imagesDotBlue,
      title: 'Design service',
      percentage: '40%',
    ),
    ItemsDetailsModel(
      dotImage: Assets.imagesDotLightBlue,
      title: 'Design service',
      percentage: '25%',
    ),
    ItemsDetailsModel(
      dotImage: Assets.imagesDotDarkBlue,
      title: 'Design service',
      percentage: '20%',
    ),
    ItemsDetailsModel(
      dotImage: Assets.imagesDotGrey,
      title: 'Design service',
      percentage: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemsDetailsModel: e)).toList(),
    );
  }
}
