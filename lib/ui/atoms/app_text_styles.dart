import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle titleText = TextStyle(
    fontSize: AppSizeList.largeTextSize,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle usernameText = TextStyle(
    fontSize: AppSizeList.mediumTextSize,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: AppSizeList.mediumTextSize,
    fontWeight: FontWeight.w300,
    color: AppColors.textBlack,
  );

  static const TextStyle subTitleText = TextStyle(
    fontSize: AppSizeList.smallTextSize,
    fontWeight: FontWeight.bold,
    color: AppColors.textGray,
  );

  static const TextStyle timeText = TextStyle(
    fontSize: AppSizeList.smallTextSize,
    fontWeight: FontWeight.w300,
    color: AppColors.textGray,
  );

  static const TextStyle textButton = TextStyle(
    fontSize: AppSizeList.smallTextSize,
    fontWeight: FontWeight.bold,
    color: AppColors.textButton,
  );
}
