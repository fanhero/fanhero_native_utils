import 'dart:async';

import 'package:flutter/services.dart';

class FanheroNativeUtils {
  static const MethodChannel _channel =
      const MethodChannel('fanhero_native_utils');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
