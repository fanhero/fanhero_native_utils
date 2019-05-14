import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fanhero_native_utils/fanhero_native_utils.dart';

void main() {
  const MethodChannel channel = MethodChannel('fanhero_native_utils');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FanheroNativeUtils.platformVersion, '42');
  });
}
