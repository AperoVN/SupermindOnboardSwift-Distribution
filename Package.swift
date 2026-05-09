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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.1/OnboardFlowSDK-1.3.1.zip",
            checksum: "4ec72a731693e21029f9b67134e48a35d7adccc2bcf3a2c65a59e3a8ef57e104"
        )
    ]
)
