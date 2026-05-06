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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.0.0/OnboardFlowSDK-1.0.0.zip",
            checksum: "11121a5d23b25897a2d219814ac45cf37be6c3e1fb399208657b63de15bf6033"
        )
    ]
)
