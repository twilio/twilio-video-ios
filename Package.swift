// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVideo",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TwilioVideo",
            targets: ["TwilioVideo"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.1.0/TwilioVideo.xcframework.zip",
            checksum: "416437007d88d55fbd9e631cc6d60523abf269f8a5dc218d1d0ca343d35554d3"
        )
    ]
)
