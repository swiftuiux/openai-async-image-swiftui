// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openai-async-image-swiftui",
    platforms: [.macOS(.v12), .iOS(.v15), .watchOS(.v8), .tvOS(.v15)],
    products: [
        .library(
            name: "openai-async-image-swiftui",
            targets: ["openai-async-image-swiftui"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftuiux/async-http-client.git", from: "1.5.0"),
        .package(url: "https://github.com/swiftuiux/async-task.git", branch: "main")
    ],
    targets: [
        .target(
            name: "openai-async-image-swiftui",
            dependencies: ["async-http-client", "async-task"]),
        .testTarget(
            name: "openai-async-image-swiftuiTests",
            dependencies: ["openai-async-image-swiftui"]),
    ]
)
