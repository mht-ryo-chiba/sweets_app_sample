import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_config.dart';
import 'package:sweets_app_sample/ui/atoms/app_colors.dart';
import 'package:sweets_app_sample/ui/organisms/shop_list_widget.dart';
import 'package:sweets_app_sample/viewmodel/top_view_mode.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize getX Controller
    final viewModel = Get.put<TopViewModel>(TopViewModel.instance);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('sweets倶楽部'),
      ),
      body: GetBuilder<TopViewModel>(
          init: viewModel,
          builder: (_) {
            return ListView.separated(
              itemCount: viewModel.shopDataList.shopList.length,
              separatorBuilder: (context, index) {
                return const Divider(height: 1);
              },
              itemBuilder: (BuildContext context, int index) {
                return ShopListWidget(
                  shopName:
                      viewModel.shopDataList
                        .shopList[index].shopName,
                  shopAddress:
                      viewModel.shopDataList
                          .shopList[index].shopAddress,
                  src:
                      viewModel.shopDataList
                          .shopList[index].imageSrc,
                  tapFunction: () {},
                );
              },
            );
          }),
      // デバッグ時のみフローティングボタンを表示
      floatingActionButton: AppConfig().isRelease()
          ? null
          : FloatingActionButton(
              onPressed: viewModel.toTemplate,
              backgroundColor: AppColors.secondary,
              child: const Icon(Icons.adb),
            ),
    );
  }
}
