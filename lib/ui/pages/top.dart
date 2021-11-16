import 'package:flutter/material.dart';
import 'package:sweets_app_sample/config/app_config.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize getX Controller
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
          : const FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.adb),
            ),
    );
  }
}
