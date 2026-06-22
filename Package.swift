// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SpinMyGP",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SpinMyGP",
            targets: ["SpinMyGP"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.6.1")
    ],
    targets: [
        .binaryTarget(
            name: "SpinMyGPBinary",
            url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.0.2/SpinMyGP.xcframework.zip",
            checksum: "37f20c1f31916506a8c8173b65a6361244de416d35d960717f59cbdd9c6e5eab"
        ),

        .target(
            name: "SpinMyGP",
            dependencies: [
                "SpinMyGPBinary",
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Lottie", package: "lottie-ios")
            ]
        )
    ]
)
