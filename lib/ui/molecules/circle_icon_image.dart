import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

class CircleIconImage extends StatelessWidget {
  const CircleIconImage({Key? key, required this.image}) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizeList.smallImageSize,
      height: AppSizeList.smallImageSize,
      margin: const EdgeInsets.all(AppSizeList.smallSize),
      child: ClipOval(
        child: image,
      ),
    );
  }
}
