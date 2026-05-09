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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.2/OnboardFlowSDK-1.3.2.zip",
            checksum: "bf67acf2ccac2a90990218670477693f03736383ab23bab33e7cec137a617f74"
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
