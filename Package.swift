// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "DebugAdapterProtocol",
    platforms: [.macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(
            name: "DebugAdapterProtocol",
            targets: ["DebugAdapterProtocol"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/JSONRPC", .branch("main")),
        .package(url: "https://github.com/Flight-School/AnyCodable", "0.6.0"..<"0.6.3"),
    ],
    targets: [
        .target(
            name: "DebugAdapterProtocol",
            dependencies: ["AnyCodable", "JSONRPC"]),
        .testTarget(
            name: "DebugAdapterProtocolTests",
            dependencies: ["DebugAdapterProtocol"]),
    ]
)
