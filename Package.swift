// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "AppLovinMediationVerveCustomNetworkAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AppLovinMediationVerveCustomNetworkAdapter",
            targets: ["AppLovinMediationVerveCustomNetworkAdapter"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", exact: "3.8.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", .upToNextMajor(from: "13.0.0"))
    ],
    targets: [
        .target(
            name: "AppLovinMediationVerveCustomNetworkAdapter",
            dependencies: [
                .product(name: "HyBid", package: "hybid-ios-spm-sdk"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "AppLovinAdapters",
            sources: [
                "AppLovinMediationVerveCustomNetworkAdapter.m"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
