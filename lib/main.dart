import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_theme.dart';
import 'package:sweets_app_sample/ui/pages/top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'sweets_app',
      theme: AppTheme().style(),
      home: const Top(),
      routes: AppRoutes().routeList(),
    );
  }
}
