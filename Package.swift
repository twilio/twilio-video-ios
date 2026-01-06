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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.1/TwilioVideo.xcframework.zip",
            checksum: "d67db2e86f0e7d7718b428c31ca15d93f8fb38e443d3fe6e13eb171d90f9983b"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.1/TwilioVideo-static.xcframework.zip",
            checksum: "0782a17e5b794031e619400eb586e9ca0a47d5a836f283c2b196fda5e6011600"
        )
    ]
)
