import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/molecules/angle_circle_icon_image.dart';
import 'package:sweets_app_sample/ui/molecules/angle_circle_large_image.dart';
import 'package:sweets_app_sample/ui/molecules/circle_icon_image.dart';

class AppImagesTemplate extends StatelessWidget {
  const AppImagesTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.appImagesTemplate.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'circleIconImage(asset)',
              style: AppTextStyles.titleText,
            ),
            CircleIconImage(
              image: Image.asset(
                'assets/images/img_profile_chiba.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'circleIconImage(network)',
              style: AppTextStyles.titleText,
            ),
            CircleIconImage(
              image: Image.network(
                'https://placehold.jp/500x500.png',
                fit: BoxFit.cover,
              ),
            ),
            const Divider(color: Colors.black),
            const Text(
              'AngleCircleIconImage(asset)',
              style: AppTextStyles.titleText,
            ),
            AngleCircleIconImage(
              image: Image.asset(
                'assets/images/img_profile_chiba.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'AngleCircleIconImage(network)',
              style: AppTextStyles.titleText,
            ),
            AngleCircleIconImage(
              image: Image.network(
                'https://placehold.jp/500x500.png',
                fit: BoxFit.cover,
              ),
            ),
            const Divider(color: Colors.black),
            const Text(
              'AngleCircleLargeImage(asset)',
              style: AppTextStyles.titleText,
            ),
            AngleCircleLargeImage(
              image: Image.asset(
                'assets/images/img_profile_chiba.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'AngleCircleLargeImage(network)',
              style: AppTextStyles.titleText,
            ),
            AngleCircleLargeImage(
              image: Image.network(
                'https://placehold.jp/500x500.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
