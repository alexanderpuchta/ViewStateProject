// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewStateProjectCoreUI",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "ViewStateProjectCoreUI",
            targets: [
                "ViewStateProjectCoreUI"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SFSafeSymbols/SFSafeSymbols",
            from: "5.2.0"
        )
    ],
    targets: [
        .target(
            name: "ViewStateProjectCoreUI",
            dependencies: [
                .product(
                    name: "SFSafeSymbols",
                    package: "SFSafeSymbols"
                )
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
