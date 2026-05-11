// swift-tools-version: 5.9
//
// DivKit + VGSL + LayoutKit are EMBEDDED in the binary (no external dep needed).
// Only RevenueCat and SupermindCMS remain as external SPM dependencies since
// they are @_exported to consumers.

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
        .package(url: "https://github.com/RevenueCat/purchases-ios-spm", exact: "5.72.0"),
        .package(url: "https://github.com/AperoVN/SupermindCMSSwift-Distribution", exact: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "OnboardFlowKitBinary",
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.12/OnboardFlowSDK-1.3.12.zip",
            checksum: "805d89d2649a9be9fa5519a389059e0256e0a4d43689b40acf6ef93615069d66"
        ),
        .target(
            name: "OnboardFlowKitTarget",
            dependencies: [
                "OnboardFlowKitBinary",
                .product(name: "RevenueCatUI", package: "purchases-ios-spm"),
                .product(name: "SupermindCMSSwift", package: "SupermindCMSSwift-Distribution")
            ],
            path: "Sources/OnboardFlowKitTarget"
        )
    ]
)
