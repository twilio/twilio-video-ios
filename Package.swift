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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.6.0/TwilioVideo.xcframework.zip",
            checksum: "9a2132ffd669e846f738e065a5d4ab0cb9e94ccae6d8facdd80169ed429d2bf1"
        ),
    ]
)
