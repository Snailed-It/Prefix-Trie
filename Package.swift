// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrefixTrie",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PrefixTrie",
            targets: ["PrefixTrie"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections", from: "1.3.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.6.1"),
        .package(url: "https://github.com/hirotakan/MessagePacker", from: "0.4.7"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PrefixTrie",
            dependencies: [
                .product(name: "OrderedCollections",
                    package: "swift-collections"),
                .product(name: "ArgumentParser",
                    package: "swift-argument-parser"),
                .product(name: "MessagePacker",
                    package: "MessagePacker")
            ]
        ),
        .testTarget(
            name: "PrefixTrieTests",
            dependencies: ["PrefixTrie"]
        ),
    ]
)
