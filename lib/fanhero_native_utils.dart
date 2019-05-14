import 'dart:async';

import 'package:flutter/services.dart';

class FanheroNativeUtils {
  static const MethodChannel _channel = const MethodChannel('fanhero_native_utils');

  static Future<void> forcePortraitOrientation() async {
    await _channel.invokeMethod('forcePortraitOrientation');
  }
}
