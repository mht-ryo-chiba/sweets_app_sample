import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_config.dart';
import 'package:sweets_app_sample/viewmodel/top_view_mode.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize getX Controller
    final viewModel = Get.put<TopViewModelInterface>(TopViewModel.instance);

    return Scaffold(
      appBar: AppBar(
        title: const Text('sweets_app'),
      ),
      body: const Center(
        child: Text('TOP Page'),
      ),
      // デバッグ時のみフローティングボタンを表示
      floatingActionButton: AppConfig().isRelease()
          ? null
          : FloatingActionButton(
              onPressed: viewModel.toTemplate,
              child: const Icon(Icons.adb),
            ),
    );
  }
}
