import Flutter
import UIKit

public class SwiftSignInWithAppleFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sign_in_with_apple_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftSignInWithAppleFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
