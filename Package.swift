// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "OnboardFlowKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "OnboardFlowKit",
            targets: ["OnboardFlowKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "OnboardFlowKit",
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.2.0/OnboardFlowSDK-1.2.0.zip",
            checksum: "c0ee53e29a6d76aa8b9564a8c6a5c9ea596c2769210c489eef157859a4220d9b"
        )
    ]
)
