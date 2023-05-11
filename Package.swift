// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "AppIconsKit",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppIconsKit",
            targets: ["AppIconsKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.0.0")),
    ],
    targets: [
        .target(
            name: "AppIconsKit",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]),
        .testTarget(
            name: "AppIconsKitTests",
            dependencies: ["AppIconsKit"]),
    ]
)
