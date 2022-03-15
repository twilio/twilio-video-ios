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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.1.0/TwilioVideo.xcframework.zip",
            checksum: "2a54930b873c3011ca60d5a6230fed103d4555fd5ba9df203887287f4b139aa1"
        )
    ]
)
