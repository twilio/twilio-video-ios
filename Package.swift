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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.3.0/TwilioVideo.xcframework.zip",
            checksum: "128e56119ce21d799777342eeedead6d73e52ae6d50ed8c57aadc9c353b76473"
        )
    ]
)
