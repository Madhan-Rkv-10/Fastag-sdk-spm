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
            url:"https://madhanrkvaws.s3.eu-north-1.amazonaws.com/Flutter335.xcframework.zip",
            checksum: "86961f5c203419fece22012419cc1278d3cb15d73469ac2a004aadb567dcd1e3"
        )       
        
    ]
)


