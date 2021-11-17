import 'package:get/get.dart';

abstract class TemplateTopViewModelInterface extends GetxController {
  Future<void> toTemplateDetail(String rootName);
}

class TemplateTopViewModel extends GetxController
    implements TemplateTopViewModelInterface {
  static final TemplateTopViewModel instance = TemplateTopViewModel();
  @override
  Future<void> toTemplateDetail(String rootName) async {
    await Get.toNamed<void>(rootName);
  }
}
