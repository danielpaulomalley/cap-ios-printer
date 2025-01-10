import Foundation
import BRLMPrinterKit

@objc public class CapIosPrinter: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func printText(_ value: String) -> String {
      print(value)
      return value
    }
    
    @objc public func testPrint(_ value: String) -> String {
        let channels = BRLMPrinterSearcher.startBluetoothSearch().channels
        if (channels.count == 1) {
            print(channels[0].description)
        }

        
        return ""
    }
}
