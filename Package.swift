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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.8.4/TwilioVideo.xcframework.zip",
            checksum: "8870f373a9e64f70e6852eda0b6faacbcacf986ad9dda2dc81ae628f34ebc7a8"
        ),
    ]
)
