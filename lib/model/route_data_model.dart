import 'package:flutter/cupertino.dart';

class RouteDataModel {
  const RouteDataModel({
    required this.pageName,
    required this.routeName,
    this.isDebug = false,
    required this.widgetBuilder,
  });

  final String pageName;
  final String routeName;
  final bool isDebug;
  final Widget Function(BuildContext) widgetBuilder;
}
