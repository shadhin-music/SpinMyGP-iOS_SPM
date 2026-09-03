// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SpinMyGP",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SpinMyGP",
            targets: ["SpinMyGP"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SnapKit/SnapKit.git",
            from: "5.7.1"
        ),
        .package(
            url: "https://github.com/airbnb/lottie-ios.git",
            from: "4.6.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SpinMyGP",
            url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.1.5/SpinMyGP.xcframework.zip",
            checksum: "74258b30b05eebda2e876a69f4dbb9db8c070e1a2560b52a5b1dec6663a3efa6"
        ),

        .target(
            name: "SpinMyGP",
            dependencies: [
                "SpinMyGPBinary",
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Lottie", package: "lottie-ios")
            ],
            path: "Sources/SpinMyGP"
        )
    ]
)
