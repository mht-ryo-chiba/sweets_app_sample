import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

class AngleCircleIconImage extends StatelessWidget {
  const AngleCircleIconImage({Key? key, required this.image}) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizeList.mediumImageSize,
      height: AppSizeList.mediumImageSize,
      margin: const EdgeInsets.all(AppSizeList.smallSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizeList.circleRadius),
        child: image,
      ),
    );
  }
}
