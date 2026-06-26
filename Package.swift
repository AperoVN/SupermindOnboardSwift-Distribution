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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.4.1/OnboardFlowSDK-1.4.1.zip",
            checksum: "64e9ebcf5ac049b45bc60fc4f4ac2772d076097d01e6f7a611648bf1421a59b8"
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
