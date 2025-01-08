// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapIosPrinter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapIosPrinter",
            targets: ["CapIosPrinterPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapIosPrinterPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapIosPrinterPlugin"),
        .testTarget(
            name: "CapIosPrinterPluginTests",
            dependencies: ["CapIosPrinterPlugin"],
            path: "ios/Tests/CapIosPrinterPluginTests")
    ]
)