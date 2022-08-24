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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.2.0/TwilioVideo.xcframework.zip",
            checksum: "ab796cb1d6ec8e918d125df0df2caaa00779000cc4840e58ed2612a14df9a9ec"
        )
    ]
)
