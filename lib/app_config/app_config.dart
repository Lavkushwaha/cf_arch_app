import 'package:flutter/foundation.dart' as foundation;

class AppConfig {
  String? appName;

  bool showDebugBanner = true;

  bool isDebugMode = foundation.kDebugMode;

  bool isReleaseMode = foundation.kReleaseMode;

  bool isWeb = foundation.kIsWeb;

  bool isProfileMode = foundation.kProfileMode;

  // isProduction = bool.fromEnvironment("dart.vm.product");
  void initalize() {
    if (isReleaseMode) {
      appName = 'CF Architecture';
      showDebugBanner = false;
    } else {
      // showDebugBanner = false;

      appName = 'CF Architecture Debug';
    }
  }
}

final AppConfig appConfig = AppConfig();
