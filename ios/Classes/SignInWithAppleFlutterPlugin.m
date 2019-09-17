#import "SignInWithAppleFlutterPlugin.h"
#import <sign_in_with_apple_flutter/sign_in_with_apple_flutter-Swift.h>

@implementation SignInWithAppleFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSignInWithAppleFlutterPlugin registerWithRegistrar:registrar];
}
@end
