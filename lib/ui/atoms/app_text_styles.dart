import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle titleText = TextStyle(
    fontSize: AppSizelist.largeTextSize,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );

  static const TextStyle usernameText = TextStyle(
    fontSize: AppSizelist.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: AppSizelist.mediumTextSize,
    fontWeight: FontWeight.w300,
    color: AppColors.textBlack,
  );

  static const TextStyle subTitleText = TextStyle(
    fontSize: AppSizelist.smallTextSize,
    fontWeight: FontWeight.w600,
    color: AppColors.textGray,
  );

  static const TextStyle timeText = TextStyle(
    fontSize: AppSizelist.smallTextSize,
    fontWeight: FontWeight.w300,
    color: AppColors.textGray,
  );

  static const TextStyle textButton = TextStyle(
    fontSize: AppSizelist.smallTextSize,
    fontWeight: FontWeight.w600,
    color: AppColors.textButton,
  );
}
