import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:sweets_app_sample/config/constants.dart';
import 'package:sweets_app_sample/model/shop_list_model.dart';
import 'package:sweets_app_sample/repository/api.dart';

class ShopListRepository extends Api {
  ShopListRepository() {
    // スタブを使用するかの個別判定
    isStab = true;

    // エンドポイント(環境により切り替える)
    dio.options.baseUrl = 'https://test-url.com';
  }
  Future<ShopListModel?> getShopList() async {
    if (isStab) {
      // スタブ環境用のロジックを記載する
      final loadData = await rootBundle
          .loadString('${Constants.sampleJsonPath}shop_list.json');
      return ShopListModel.fromJson(
          json.decode(loadData) as Map<String, dynamic>);
    } else {
      // 本番用(暫定)
      return dio.get<String>('/shopList').then((response) {
        if (response.statusCode == 200) {
          return ShopListModel.fromJson(
              json.decode(response.data ?? '') as Map<String, dynamic>);
        } else {
          return null;
        }
      });
    }
  }
}
