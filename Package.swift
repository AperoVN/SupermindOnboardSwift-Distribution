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
        // RevenueCat pinned as `from:` so consumer apps can bump minor/patch without SPM conflict.
        // Binary compiled against $REVENUECAT_VERSION; RevenueCat 5.x maintains ABI within major.
        .package(url: "https://github.com/RevenueCat/purchases-ios-spm", from: "5.72.0"),
        .package(url: "https://github.com/AperoVN/SupermindCMSSwift-Distribution", exact: "1.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "OnboardFlowKitBinary",
            url: "https://github.com/AperoVN/SupermindOnboardSwift-Distribution/releases/download/1.4.9/OnboardFlowSDK-1.4.9.zip",
            checksum: "f4f27f5bcc6434bc3b317e0fc4de2be45399512858381a17b2a9a35bbf1b9f13"
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
