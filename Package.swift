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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.4.0/TwilioVideo.xcframework.zip",
            checksum: "6c32b7cfdb88baea80a7587f743db925db68ace0794020bf8bc4d68472c7d6e6"
        )
    ]
)
