import 'package:sweets_app_sample/model/shop_model.dart';

class ShopListModel {
  const ShopListModel({required this.shopList});

  factory ShopListModel.fromJson(Map<String, dynamic> json) {
    final shopDataList = <ShopModel>[];
    if (json['shop_list'] != null) {
      for (final shopData in json['shop_list']) {
        shopDataList.add(ShopModel.fromJson(shopData as Map<String, dynamic>));
      }
    }
    return ShopListModel(shopList: shopDataList);
  }
  final List<ShopModel> shopList;
}
