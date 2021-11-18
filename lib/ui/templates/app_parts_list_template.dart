import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/organisms/shop_list_widget.dart';

class AppPartsListTemplate extends StatelessWidget {
  const AppPartsListTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.appPartsListTemplate.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'ShopListWidget',
              style: AppTextStyles.titleText,
            ),
            ShopListWidget(
              src: 'https://placehold.jp/500x500.png',
              shopName: '店舗名',
              shopAddress: '住所',
              tapFunction: () {},
            ),
            ShopListWidget(
              src: 'https://placehold.jp/500x500.png',
              shopName: '長めの店舗名です長めの店舗名です長めの店舗名です長めの店舗名です長めの店舗名です',
              shopAddress: '長めの住所です長めの住所です長めの住所です長めの住所です長めの住所です',
              tapFunction: () {},
            ),
            const Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
