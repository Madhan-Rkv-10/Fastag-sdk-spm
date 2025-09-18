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
            url:"https://madhanrkvaws.s3.eu-north-1.amazonaws.com/Flutterv335.xcframework.zip",
            checksum: "d964b31cfc389f27cfaed812e72e2a2797ddc6c5205b8e76c7827a316f8982e4"
        )       
        
    ]
)


