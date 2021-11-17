import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_colors.dart';

class AppColorsTemplate extends StatelessWidget {
  const AppColorsTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.appColorsTemplate.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.primary,
              child: const Text(
                'primary',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.secondary,
              child: const Text(
                'secondary',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.disable,
              child: const Text(
                'disable',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.bgWhite,
              child: const Text(
                'bgWhite',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.stroke,
              child: const Text(
                'stroke',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.textBlack,
              child: const Text(
                'textBlack',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.textGray,
              child: const Text(
                'textGray',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.textBtnWhite,
              child: const Text(
                'textBtnWhite',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 24,
              alignment: Alignment.center,
              color: AppColors.textButton,
              child: const Text(
                'textButton',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
