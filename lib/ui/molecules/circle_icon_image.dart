import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

class CircleIconImage extends StatelessWidget {
  const CircleIconImage({Key? key, required this.image}) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizelist.smallImageSize,
      height: AppSizelist.smallImageSize,
      margin: const EdgeInsets.all(AppSizelist.smallSize),
      child: ClipOval(
        child: image,
      ),
    );
  }
}
