class AppConfig {
  // リリース判定用
  bool isRelease() {
    return const bool.fromEnvironment('dart.vm.product', defaultValue: false);
  }
}
