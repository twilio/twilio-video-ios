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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.5.0/TwilioVideo.xcframework.zip",
            checksum: "5d6cd0f91a4d0161e7068a65cf0a103a2d18ad529f1bf5a7ff8b13c9186857ad"
        ),
    ]
)
