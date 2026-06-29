// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "medallia-dxa-ios-flutter-sdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "medallia-dxa-ios-flutter-sdk",
            targets: ["MedalliaDXAFlutterSDKWrapper"]),
    ],
    dependencies: [
        .package(
            name: "MedalliaBridgeSDK",
            url: "https://github.com/medallia/mobile-ios-bridge-sdk.git",
            .upToNextMinor(from: "1.3.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "MedalliaDXAFlutter",
            path: "MedalliaDXAFlutter.xcframework"
        ),
        .target(
            name: "MedalliaDXAFlutterSDKWrapper",
            dependencies: [
                .target(
                    name: "MedalliaDXAFlutter"
                ),
                .product(
                    name: "medallia-mobile-bridge-ios-sdk",
                    package: "MedalliaBridgeSDK"
                )
            ],
            path: "MedalliaDXAFlutterSDKWrapper"
        )
        
    ]
)
