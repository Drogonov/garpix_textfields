// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GXTextField",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GXTextField",
            targets: ["GXTextField"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "GXUtilz",
            url: "https://github.com/GARPIX-iOS/garpix_utils",
            from: "1.3.3"
         )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GXTextField",
            dependencies: ["GXUtilz"]
        ),
        .testTarget(
            name: "GXTextFieldTests",
            dependencies: ["GXTextField"]
        )
    ]
)
