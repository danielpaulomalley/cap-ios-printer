import Foundation
import Capacitor
import BRLMPrinterKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapIosPrinterPlugin)
public class CapIosPrinterPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapIosPrinterPlugin"
    public let jsName = "CapIosPrinter"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "printText", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CapIosPrinter()
    

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func printText(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        print("i am here")
        call.resolve(["value": implementation.printText(value)])
    }
}
