// swift-tools-version:5.9
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
    targets: [
        .binaryTarget(
            name: "SpinMyGP",
            url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.0.1/SpinMyGP.xcframework.zip",
            checksum: "37f20c1f31916506a8c8173b65a6361244de416d35d960717f59cbdd9c6e5eab"
        )
    ]
)
