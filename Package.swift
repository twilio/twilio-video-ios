// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVideo",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TwilioVideo",
            targets: ["TwilioVideo"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.0.0-beta2/TwilioVideo.xcframework.zip",
            checksum: "1e40465d5f602540eb470cf9c2a0e493bc51cf1b88ce9fe019065b4acd689fe3"
        )
    ]
)
