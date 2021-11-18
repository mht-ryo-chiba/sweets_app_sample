import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/organisms/comment_detail_widget.dart';
import 'package:sweets_app_sample/ui/organisms/shop_detail_widget.dart';
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
            const SizedBox(height: 16),
            const Text(
              'CommentDetailWidget',
              style: AppTextStyles.titleText,
            ),
            const ShopDetailWidget(
              shopName: '店舗名テキスト',
              shopOpenTime: '10:00 - 19:00',
              shopPhoneNo: '01-2345-6789',
              shopAddress: '東京都千代田区1-1-1',
              src: 'https://placehold.jp/500x500.png',
            ),
            const ShopDetailWidget(
              shopName: '長めの店舗名テキスト長めの店舗名テキスト長めの店舗名テキスト',
              shopOpenTime: '不定期',
              shopPhoneNo: '-',
              shopAddress: '-',
              src: 'https://placehold.jp/500x500.png',
            ),
            const Divider(color: Colors.black),
            const SizedBox(height: 16),
            const Text(
              'CommentDetailWidget',
              style: AppTextStyles.titleText,
            ),
            CommentDetailWidget(
              userName: '山田太郎',
              createString: '1時間前',
              comment: 'ここにはユーザーのコメントが入ります',
              src: 'https://placehold.jp/500x500.png',
              tapFunction: () {},
            ),
            CommentDetailWidget(
              userName: '長い名前です長い名前です長い名前です長い名前です長い名前です',
              createString: '1時間前',
              comment:
                  'コメントを全文表示、長い場合は複数行にする\nサンプルテキストサンプルテキストサンプルテキストサンプルテキスト',
              src: 'https://placehold.jp/500x500.png',
              tapFunction: () {},
            )
          ],
        ),
      ),
    );
  }
}
