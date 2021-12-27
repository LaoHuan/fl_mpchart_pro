#import "FlMpchartProPlugin.h"
#if __has_include(<fl_mpchart_pro/fl_mpchart_pro-Swift.h>)
#import <fl_mpchart_pro/fl_mpchart_pro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fl_mpchart_pro-Swift.h"
#endif

@implementation FlMpchartProPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlMpchartProPlugin registerWithRegistrar:registrar];
}
@end
