import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_config.dart';
import 'package:sweets_app_sample/model/route_data_model.dart';
import 'package:sweets_app_sample/ui/pages/top.dart';
import 'package:sweets_app_sample/ui/templates/app_colors_template.dart';
import 'package:sweets_app_sample/ui/templates/app_images_template.dart';
import 'package:sweets_app_sample/ui/templates/app_text_styles_template.dart';
import 'package:sweets_app_sample/ui/templates/template_top.dart';

class AppRoutes {
  final List<RouteDataModel> _routeList = [
    RouteDataModel(
      pageName: Pages.top.name,
      routeName: Pages.top.routeName,
      widgetBuilder: (BuildContext context) => const Top(),
    ),
    // デバッグ用
    RouteDataModel(
      pageName: Pages.templateTop.name,
      routeName: Pages.templateTop.routeName,
      isDebug: true,
      widgetBuilder: (BuildContext context) => const TemplateTop(),
    ),
    RouteDataModel(
      pageName: Pages.appColorsTemplate.name,
      routeName: Pages.appColorsTemplate.routeName,
      isDebug: true,
      widgetBuilder: (BuildContext context) => const AppColorsTemplate(),
    ),
    RouteDataModel(
      pageName: Pages.appTextStyleTemplate.name,
      routeName: Pages.appTextStyleTemplate.routeName,
      isDebug: true,
      widgetBuilder: (BuildContext context) => const AppTextStyleTemplate(),
    ),
    RouteDataModel(
      pageName: Pages.appImagesTemplate.name,
      routeName: Pages.appImagesTemplate.routeName,
      isDebug: true,
      widgetBuilder: (BuildContext context) => const AppImagesTemplate(),
    ),
  ];

  Map<String, Widget Function(BuildContext)> routeList() {
    var returnRoutes = <String, Widget Function(BuildContext)>{};
    if (AppConfig().isRelease()) {
      // リリース時
      for (final route in _routeList) {
        if (route.isDebug == false) {
          returnRoutes.addAll({route.routeName: route.widgetBuilder});
        }
      }
    } else {
      // デバッグ時
      returnRoutes = {
        for (var route in _routeList) route.routeName: route.widgetBuilder
      };
    }
    return returnRoutes;
  }
}

// 以下ページ一覧設定
enum Pages {
  top,
  templateTop,
  appColorsTemplate,
  appTextStyleTemplate,
  appImagesTemplate,
}

extension PageNameExtension on Pages {
  static final names = {
    Pages.top: 'トップページ',
    Pages.templateTop: 'テンプレートトップ',
    Pages.appColorsTemplate: 'カラーテンプレート',
    Pages.appTextStyleTemplate: 'テキストスタイルテンプレート',
    Pages.appImagesTemplate: '画像テンプレート',
  };

  static final rootNames = {
    Pages.top: '/top',
    Pages.templateTop: '/templateTop',
    Pages.appColorsTemplate: '/appColorsTemplate',
    Pages.appTextStyleTemplate: '/appTextStyleTemplate',
    Pages.appImagesTemplate: '/appImagesTemplate',
  };

  String get routeName => rootNames[this] ?? '';
  String get name => names[this] ?? '';
}
