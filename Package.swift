// swift-tools-version: 5.9
import PackageDescription

// A dependency-free macOS test harness for the same core sources used by iOS.
let package = Package(
    name: "CapsuleScanCore",
    platforms: [.macOS(.v14), .iOS(.v17)],
    products: [.library(name: "CapsuleScanCore", targets: ["CapsuleScanCore"])],
    targets: [
        .target(name: "CapsuleScanCore", path: "CapsuleScan/Core"),
        .testTarget(name: "CapsuleScanCoreTests", dependencies: ["CapsuleScanCore"], path: "CapsuleScanTests", exclude: ["PersistenceTests.swift"])
    ]
)
