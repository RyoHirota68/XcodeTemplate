// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XcodeTemplates",
    platforms: [.iOS(.v15)],
    products: [
        .plugin(name: "InstallXcodeTemplates", targets: ["InstallXcodeTemplates"])
    ],
    targets: [
        .plugin(
            name: "InstallXcodeTemplates",
            capability: .command(
                intent: .custom(verb: "install-xcode-templates", description: "Installs Xcode templates"),
                permissions: [.writeToPackageDirectory(reason: "Install Xcode templates")]
            ),
            path: "Plugins/InstallXcodeTemplates"
        )
    ]
)
