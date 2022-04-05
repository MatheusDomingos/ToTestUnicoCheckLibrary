// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToTestUnicoCheckLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ToTestUnicoCheckLibrary",
            targets: ["ToTestUnicoCheckLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/acesso-io/unico-check-ios", from: "2.1.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ToTestUnicoCheckLibrary",
            dependencies: [
                .product(name: "unicocheck-ios-spm", package: "unico-check-ios")
                
            ]),
        .testTarget(
            name: "ToTestUnicoCheckLibraryTests",
            dependencies: ["ToTestUnicoCheckLibrary"]),
    ]
)
