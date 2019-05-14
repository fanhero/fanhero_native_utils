package com.fanhero.fanhero_native_utils

import android.app.Activity
import android.content.pm.ActivityInfo

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class FanheroNativeUtilsPlugin: MethodCallHandler {
  private val activity: Activity

  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "fanhero_native_utils")
      channel.setMethodCallHandler(FanheroNativeUtilsPlugin(activity = registrar.activity()))
    }
  }

  constructor(activity: Activity) {
    this.activity = activity
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method === "forcePortraitOrientation") {
      activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
    } else {
      result.notImplemented()
    }
  }
}
