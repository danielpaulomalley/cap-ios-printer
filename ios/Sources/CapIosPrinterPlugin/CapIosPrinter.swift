import Foundation

@objc public class CapIosPrinter: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func printText(_ value: String) -> String {
      print(value)
      return value
    }
}
