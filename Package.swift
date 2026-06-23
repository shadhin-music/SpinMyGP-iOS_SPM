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
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.6.0")
    ],
    targets: [
        .target(
            name: "SpinMyGP",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Lottie", package: "lottie-ios")
            ],
            path: "SpinMyGP/SpinMyGP",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
