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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.8.0/TwilioVideo.xcframework.zip",
            checksum: "5bd09e5483bb1a474df312c7a413ab3580e46cc3c1a5110ffee4924ebad68164"
        ),
    ]
)
