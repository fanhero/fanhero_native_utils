import Flutter
import UIKit

public class SwiftFanheroNativeUtilsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "fanhero_native_utils", binaryMessenger: registrar.messenger())
    let instance = SwiftFanheroNativeUtilsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "forcePortraitOrientation") {
      UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
  }
}
