// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftOCR",
    platforms: [
      .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "SwiftOCR",
            targets: ["SwiftOCR"]),
    ],
    dependencies: [
        .package(url: "https://github.com/s-z-h/GPUImage.git"),
    ],
    targets: [
        .target(
            name: "SwiftOCR",
            dependencies: ["GPUImage"],
            path: "Lib/SwiftOCR")
    ],
    swiftLanguageVersions: [.v5]
)
