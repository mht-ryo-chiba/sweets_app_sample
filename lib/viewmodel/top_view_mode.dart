import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_routes.dart';

abstract class TopViewModelInterface extends GetxController {
  Future<void> toTemplate();
}

class TopViewModel extends GetxController implements TopViewModelInterface {
  static final TopViewModel instance = TopViewModel();

  @override
  Future<void> toTemplate() async {
    await Get.toNamed<void>(Pages.templateTop.routeName);
  }
}
