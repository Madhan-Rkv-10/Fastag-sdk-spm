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
            url:"https://madhanrkvaws.s3.eu-north-1.amazonaws.com/Flutters.xcframework.zip",
            checksum: "aca22009f71123f736c3bfc0dda084d0077b899ebac0e9610de95e3b3f45cb50"
        )
        
    ]
)


