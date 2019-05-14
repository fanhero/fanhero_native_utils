#import "FanheroNativeUtilsPlugin.h"
#import <fanhero_native_utils/fanhero_native_utils-Swift.h>

@implementation FanheroNativeUtilsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFanheroNativeUtilsPlugin registerWithRegistrar:registrar];
}
@end
