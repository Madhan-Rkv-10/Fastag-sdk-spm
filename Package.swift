// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FastagSdkIos",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FastagSdkIos",
            targets: ["FastagSdkIos"]),
    ],
    targets: [
        .target(
            name: "FastagSdkIos",
            dependencies: [
                "App",
                "fastagwrapperios",
                "Flutter"
            ],
            path: "Sources/FastagSdkIos"
        ),
        
        .binaryTarget(
            name: "fastagwrapperios",
            path: "./fastagwrapperios.xcframework"
        ),
        
        .binaryTarget(
            name: "App",
            path: "./App.xcframework"
        ),
        .binaryTarget(
            name: "Flutter",
            url:"https://madhanrkvaws.s3.eu-north-1.amazonaws.com/Flutter.xcframework.zip",
            checksum: "d4bcc43308b5eaa62324b3d4b71b606d0e0ee8b3f1f50cb66923a481bd9cc38d"
        )
        
    ]
)


