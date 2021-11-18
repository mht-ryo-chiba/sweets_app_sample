import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/model/shop_list_model.dart';
import 'package:sweets_app_sample/repository/shop_list_repository.dart';

abstract class TopViewModelInterface extends GetxController {
  Future<void> toTemplate();
  ShopListModel get shopDataList;
}

class TopViewModel extends GetxController implements TopViewModelInterface {
  TopViewModel._() {
    () async {
      // 擬似的にAPI通信を行う
      await callApi();
    }();
  }

  static final TopViewModel instance = TopViewModel._();

  late ShopListModel _shopDataList =
      ShopListModel.fromJson(<String, dynamic>{});

  Future<void> callApi() async {
    await ShopListRepository().getShopList().then((response) {
      if (response != null) {
        _shopDataList = response;
        update();
      }
    });
  }

  @override
  ShopListModel get shopDataList => _shopDataList;

  @override
  Future<void> toTemplate() async {
    await Get.toNamed<void>(Pages.templateTop.routeName);
  }
}
