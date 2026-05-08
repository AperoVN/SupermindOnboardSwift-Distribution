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
            checksum: "1005d57d0fb2545b2c363e5a180dad9406d1d3f60d709b6497cbace86043b421"
        )
    ]
)
