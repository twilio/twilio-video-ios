// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVideo",
    platforms: [
        .iOS("12.2")
    ],
    products: [
        .library(
            name: "TwilioVideo",
            targets: ["TwilioVideo"]),
        .library(
            name: "TwilioVideo-static",
            targets: ["TwilioVideo"])
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.0/TwilioVideo.xcframework.zip",
            checksum: "08c55e804d3e54a32d03f215ddaca525ab1e59cd2c1e5fe4db3357cf7da8bfb9"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.0/TwilioVideo-static.xcframework.zip",
            checksum: "783e6fa68da476a530825c0cdec37173c8984e26a48d5fee007d8dab22cd1dd8"
        )
    ]
)
