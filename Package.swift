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
            targets: ["OnboardFlowKitTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/divkit/divkit-ios", from: "32.0.0"),
        .package(url: "https://github.com/RevenueCat/purchases-ios-spm", from: "5.0.0"),
        .package(url: "https://github.com/AperoVN/SupermindCMSSwift-Distribution", from: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "OnboardFlowKitBinary",
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.3/OnboardFlowSDK-1.3.3.zip",
            checksum: "67a09594ca0e520df027a5462bfef30f522136cff09e1f8d1d40d7064b770f1c"
        ),
        .target(
            name: "OnboardFlowKitTarget",
            dependencies: [
                "OnboardFlowKitBinary",
                .product(name: "DivKit", package: "divkit-ios"),
                .product(name: "RevenueCatUI", package: "purchases-ios-spm"),
                .product(name: "SupermindCMSSwift", package: "SupermindCMSSwift-Distribution")
            ],
            path: "Sources/OnboardFlowKitTarget"
        )
    ]
)
