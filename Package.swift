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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.2/TwilioVideo.xcframework.zip",
            checksum: "924c3367742873cf10eeed294f908983701dae300880fbcc928e58e4820cde1a"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.2/TwilioVideo-static.xcframework.zip",
            checksum: "2f21aa27b85aefe0d8b2adf802514ceed2da2cee1d3723c0742133276c874e7e"
        )
    ]
)
