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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.0/TwilioVideo.xcframework.zip",
            checksum: "5ffc7378e83f0ca93630eb84edae2d5bfa54a8251afa982316ac166db6e4fbb6"
        ),
    ]
)
