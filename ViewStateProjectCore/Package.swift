// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewStateProjectCore",
    platforms: [
        .iOS(.v17),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "ViewStateProjectCore",
            targets: [
                "ViewStateProjectCore"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/hmlongco/Factory",
            from: "2.3.1"
        )
    ],
    targets: [
        .target(
            name: "ViewStateProjectCore",
            dependencies: [
                .product(
                    name: "Factory",
                    package: "Factory"
                )
            ]
        ),
        .testTarget(
            name: "ViewStateProjectCoreTests",
            dependencies: [
                "ViewStateProjectCore"
            ]
        )
    ]
)
