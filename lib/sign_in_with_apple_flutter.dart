import 'dart:async';

import 'package:flutter/services.dart';

class SignInWithAppleFlutter {
  static const MethodChannel _channel =
      const MethodChannel('sign_in_with_apple_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
