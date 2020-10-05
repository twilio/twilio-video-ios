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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.0.0-beta1/TwilioVideo.xcframework.zip",
            checksum: "a697a84500de27547703488a3291f32fdf7b23a38ddbb5c660df3ed42b76c196"
        )
    ]
)
