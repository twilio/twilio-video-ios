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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.7.0/TwilioVideo.xcframework.zip",
            checksum: "df22418e4dcca9d2d317d0fb5e35b9ba8cc91662e1c21517f7c09a085092bfbe"
        ),
    ]
)
