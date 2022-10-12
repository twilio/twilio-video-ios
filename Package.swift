// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RELEASE_PACKAGE_NAME",
    platforms: [
        .iOS("12.2")
    ],
    products: [
        .library(
            name: "RELEASE_PACKAGE_NAME",
            targets: ["RELEASE_PACKAGE_NAME"]),
    ],
    targets: [
        .binaryTarget(
            name: "RELEASE_PACKAGE_NAME",
            url: "RELEASE_ARCHIVE_URL",
            checksum: "RELEASE_CHECKSUM"
        ),
    ]
)
