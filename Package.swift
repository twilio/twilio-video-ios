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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.0.0-beta3/TwilioVideo.xcframework.zip",
            checksum: "e2b14f83462e6afcf7921b445da18a58f116aa9cb80308ec15739b55099c32fd"
        )
    ]
)
