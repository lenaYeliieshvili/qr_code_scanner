import Flutter
import UIKit

@objc(FlutterQrPlugin)
public class FlutterQrPlugin: NSObject, FlutterPlugin {

  var factory: QRViewFactory
  public init(with registrar: FlutterPluginRegistrar) {
    self.factory = QRViewFactory(withRegistrar: registrar)
    registrar.register(factory, withId: "net.touchcapture.qr.flutterqr/qrview")
  }
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = FlutterQrPlugin(with: registrar)
    // Keep the plugin instance alive for the engine's lifetime without
    // subscribing to (deprecated) UIApplicationDelegate lifecycle events.
    registrar.publish(instance)
  }

}
