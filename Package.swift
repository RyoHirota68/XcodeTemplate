// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XcodeTemplates",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XcodeTemplates", targets: ["XcodeTemplates"]),
    ],
    targets: [
        .target(
            name: "XcodeTemplates",
            path: "Sources",
            exclude: ["Templates"], // 不要なディレクトリを除外
            resources: [.copy("Templates")] // Xcode のテンプレートをリソースとしてコピー
        )
    ]
)
