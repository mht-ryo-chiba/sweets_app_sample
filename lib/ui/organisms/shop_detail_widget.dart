import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/molecules/angle_circle_large_image.dart';

class ShopDetailWidget extends StatelessWidget {
  const ShopDetailWidget({
    Key? key,
    required this.shopName,
    required this.shopOpenTime,
    required this.shopPhoneNo,
    required this.shopAddress,
    required this.src,
  }) : super(key: key);

  final String shopName;
  final String shopOpenTime;
  final String shopPhoneNo;
  final String shopAddress;
  final String src;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AngleCircleLargeImage(
          image: Image.network(
            src,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizeList.mediumSize,
          ),
          child: Text(
            shopName,
            style: AppTextStyles.titleText,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: AppSizeList.smallSize,
            right: AppSizeList.mediumSize,
            left: AppSizeList.mediumSize,
          ),
          child: Text(
            'OPEN',
            style: AppTextStyles.subTitleText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizeList.mediumSize,
          ),
          child: Text(
            shopOpenTime,
            style: AppTextStyles.bodyText,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: AppSizeList.smallSize,
            right: AppSizeList.mediumSize,
            left: AppSizeList.mediumSize,
          ),
          child: Text(
            'PHONE',
            style: AppTextStyles.subTitleText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizeList.mediumSize,
          ),
          child: Text(
            shopPhoneNo,
            style: AppTextStyles.bodyText,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: AppSizeList.smallSize,
            right: AppSizeList.mediumSize,
            left: AppSizeList.mediumSize,
          ),
          child: Text(
            'ADDRESS',
            style: AppTextStyles.subTitleText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: AppSizeList.mediumSize,
            left: AppSizeList.mediumSize,
            bottom: AppSizeList.mediumSize,
          ),
          child: Text(
            shopAddress,
            style: AppTextStyles.bodyText,
          ),
        ),
      ],
    );
  }
}
