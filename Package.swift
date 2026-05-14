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
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.3.17/OnboardFlowSDK-1.3.17.zip",
            checksum: "046b68389eeeb52c9a67abb38ab4ca297495ff753d0166d5e464484f63cb959b"
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
