// Migrated from `dart:html` to `package:web` so the plugin compiles
// under `dart2wasm`. Functionally identical — this web shim only reads
// `navigator.userAgent` to satisfy the platform interface contract.

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'flutter_aws_chime_platform_interface.dart';

/// A web implementation of the FlutterAwsChimePlatform of the FlutterAwsChime plugin.
class FlutterAwsChimeWeb extends FlutterAwsChimePlatform {
  /// Constructs a FlutterAwsChimeWeb
  FlutterAwsChimeWeb();

  static void registerWith(Registrar registrar) {
    FlutterAwsChimePlatform.instance = FlutterAwsChimeWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
