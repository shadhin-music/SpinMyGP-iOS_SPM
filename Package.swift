// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SpinMyGP",

    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
    ],

    products: [
            .library(
                name: "SpinMyGP",
                targets: ["SpinMyGPWrapper"]
            )
        ],

        dependencies: [
            .package(
                url: "https://github.com/SnapKit/SnapKit.git",
                from: "6.0.0"
            ),
            .package(
                url: "https://github.com/airbnb/lottie-ios.git",
                from: "4.6.1"
            )
        ],

        targets: [
            .target(
                name: "SpinMyGPWrapper",
                dependencies: [
                    "SpinMyGP",
                    .product(name: "SnapKit", package: "SnapKit"),
                    .product(name: "Lottie", package: "lottie-ios")
                ],
                path: "Sources/SpinMyGP"
            ),
            
                .binaryTarget(
                    name: "SpinMyGP",
                    url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.1.9/SpinMyGP.xcframework.zip",
                    checksum: "eee3a36062289e0b3e9062f5f907087644858b77b0a42ffb9c0f6e9b0e29eff6"
                )
            ]
        )

