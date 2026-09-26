import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive/models/all_expenses_item_model.dart';
import 'package:responsive/utils/styles/app_color.dart';
import 'package:responsive/utils/styles/app_styles.dart';
import 'package:responsive/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        color: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFf1f1f1), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          Gap(34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular12(context),
            ),
          ),
          Gap(16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const ShapeDecoration(
        color: AppColor.lightBlueColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColor.lightBlueColor, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageBackgroundColor: AppColor.whiteColor.withOpacity(0.1),
            imageColor: AppColor.whiteColor,
            iconColor: AppColor.whiteColor,
          ),
          Gap(34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: AppColor.whiteColor),
            ),
          ),
          Gap(8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular12(
                context,
              ).copyWith(color: AppColor.whiteColor),
            ),
          ),
          Gap(16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: AppColor.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
