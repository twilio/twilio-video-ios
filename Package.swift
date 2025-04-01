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
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.9.0/TwilioVideo.xcframework.zip",
            checksum: "62c2f0c4886c4d29a72444ad51ae810527cc37effb8f39a22a6045a0585bd22b"
        ),
    ]
)
