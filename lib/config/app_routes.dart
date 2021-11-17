import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_config.dart';
import 'package:sweets_app_sample/model/route_data_model.dart';
import 'package:sweets_app_sample/ui/pages/top.dart';

class AppRoutes {
  final List<RouteDataModel> _routeList = [
    RouteDataModel(
      pageName: Pages.top.name,
      routeName: Pages.top.routeName,
      widgetBuilder: (BuildContext context) => const Top(),
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
}

extension PageNameExtension on Pages {
  static final names = {
    Pages.top: 'トップページ',
  };

  static final rootNames = {
    Pages.top: '/top',
  };

  String get routeName => rootNames[this] ?? '';
  String get name => names[this] ?? '';
}
