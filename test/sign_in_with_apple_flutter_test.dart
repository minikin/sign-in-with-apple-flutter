import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sign_in_with_apple_flutter/sign_in_with_apple_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('sign_in_with_apple_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SignInWithAppleFlutter.platformVersion, '42');
  });
}
