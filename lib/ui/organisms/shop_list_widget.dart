import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/molecules/angle_circle_icon_image.dart';

class ShopListWidget extends StatelessWidget {
  const ShopListWidget({
    Key? key,
    required this.src,
    required this.shopName,
    required this.shopAddress,
    required this.tapFunction,
  }) : super(key: key);

  final String src;
  final String shopName;
  final String shopAddress;
  final VoidCallback tapFunction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(AppSizeList.mediumSize),
      child: InkWell(
        onTap: tapFunction,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AngleCircleIconImage(
              image: Image.network(
                src,
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppSizeList.mediumSize),
                    child: Text(
                      shopName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.titleText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppSizeList.smallSize),
                    child: Text(
                      shopAddress,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyText,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
