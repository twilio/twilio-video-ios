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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.0.0/TwilioVideo.xcframework.zip",
            checksum: "caf63ceb51e6ef56d881da3e01713fedfd566c9371842f249c49fcc186a265c6"
        )
    ]
)
