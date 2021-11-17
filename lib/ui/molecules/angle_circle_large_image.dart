import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

class AngleCircleLargeImage extends StatelessWidget {
  const AngleCircleLargeImage({Key? key, required this.image})
      : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(AppSizelist.smallSize),
      child: AspectRatio(
        aspectRatio: AppSizelist.largeImageAspect,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizelist.circleRadius),
          child: image,
        ),
      ),
    );
  }
}
