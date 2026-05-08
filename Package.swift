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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.0/OnboardFlowSDK-1.3.0.zip",
            checksum: "6b57d48b20c59c9411de1dd7913a845d50663d1efb07623c6b1b7b8773ff0e57"
        )
    ]
)
