import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

class AngleCircleIconImage extends StatelessWidget {
  const AngleCircleIconImage({Key? key, required this.image}) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizelist.mediumImageSize,
      height: AppSizelist.mediumImageSize,
      margin: const EdgeInsets.all(AppSizelist.smallSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizelist.circleRadius),
        child: image,
      ),
    );
  }
}
