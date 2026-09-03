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
    targets: [
        .binaryTarget(
            name: "SpinMyGP",   // must match module name inside XCFramework
            url: "https://github.com/shadhin-music/SpinMyGP-iOS_SPM/releases/download/0.1.6/SpinMyGP.xcframework.zip",
            checksum: "74258b30b05eebda2e876a69f4dbb9db8c070e1a2560b52a5b1dec6663a3efa6"
        )
    ]
)
