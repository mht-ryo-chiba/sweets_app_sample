import 'package:get/get.dart';
import 'package:sweets_app_sample/model/comment_list_model.dart';
import 'package:sweets_app_sample/repository/comment_list_repository.dart';

abstract class ShopDetailViewModelInterface extends GetxController {
  CommentListModel get commentDataList;
}

class ShopDetailViewModel extends GetxController
    implements ShopDetailViewModelInterface {
  ShopDetailViewModel._(this.shopId) {
    () async {
      // 擬似的にAPI通信を行う
      await callApi();
    }();
  }

  static final ShopDetailViewModel instance = ShopDetailViewModel._(null);

  late CommentListModel _commentDataList =
      CommentListModel.fromJson(<String, dynamic>{});
  final int? shopId;

  Future<void> callApi() async {
    await CommentListRepository().getCommentList(
        requestParams: {'shop_id': shopId ?? 0}).then((response) {
      if (response != null) {
        _commentDataList = response;
        update();
      }
    });
  }

  @override
  CommentListModel get commentDataList => _commentDataList;
}
