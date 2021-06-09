// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVideo",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TwilioVideo",
            targets: ["TwilioVideo"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.0-beta1/TwilioVideo.xcframework.zip",
            checksum: "feee2582af2e711ad99f8cd58e67052dc8fa40e8e13e50b5ed9d857ae598c101"
        )
    ]
)
