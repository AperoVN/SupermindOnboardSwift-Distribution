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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.1.1/OnboardFlowSDK-1.1.1.zip",
            checksum: "9d3e024090041e5c26a0f4dd90e308fc8fd0613086b413f2770dfd059a1c14fe"
        )
    ]
)
