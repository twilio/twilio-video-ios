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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/0.0.99/TwilioVideo.xcframework.zip",
            checksum: "67a80698eced4d29dba86759d5ff412b3f3427323d329ec7e9a35845c32627f8"
        ),
    ]
)
