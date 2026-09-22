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
                url: "https://github.com/airbnb/lottie-spm.git",
                from: "4.6.1"
            )
        ],

        targets: [
            .target(
                name: "SpinMyGPWrapper",
                dependencies: [
                    "SpinMyGP",
                    .product(name: "SnapKit", package: "SnapKit"),
                    .product(name: "Lottie", package: "lottie-spm")
                ],
                path: "Sources/SpinMyGP"
            ),
            
                .binaryTarget(
                    name: "SpinMyGP",
                    url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.1.12/SpinMyGP.xcframework.zip",
                    checksum: "6f3dd54a810c76047cf4cf381eaf437db13f6689ebec52220a34b68cc6c2491c"
                )
            ]
        )

