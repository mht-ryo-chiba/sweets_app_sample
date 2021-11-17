import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_app_sample/config/app_routes.dart';
import 'package:sweets_app_sample/viewmodel/template_top_view_model.dart';

class TemplateTop extends StatelessWidget {
  const TemplateTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize getX Controller
    final viewModel =
        Get.put<TemplateTopViewModelInterface>(TemplateTopViewModel.instance);

    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.templateTop.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  viewModel.toTemplateDetail(Pages.appColorsTemplate.routeName);
                },
                child: const Text('AppColor'),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}
