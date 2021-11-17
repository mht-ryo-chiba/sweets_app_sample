import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';

class AppTextStyleTemplate extends StatelessWidget {
  const AppTextStyleTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.appTextStyleTemplate.name),
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 16),
            Text(
              'titleText',
              style: AppTextStyles.titleText,
            ),
            SizedBox(height: 16),
            Text(
              'usernameText',
              style: AppTextStyles.usernameText,
            ),
            SizedBox(height: 16),
            Text(
              'bodyText',
              style: AppTextStyles.bodyText,
            ),
            SizedBox(height: 16),
            Text(
              'subTitleText',
              style: AppTextStyles.subTitleText,
            ),
            SizedBox(height: 16),
            Text(
              'timeText',
              style: AppTextStyles.timeText,
            ),
            SizedBox(height: 16),
            Text(
              'textButton',
              style: AppTextStyles.textButton,
            ),
          ],
        ),
      ),
    );
  }
}
