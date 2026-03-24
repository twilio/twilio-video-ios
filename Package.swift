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
        .library(
            name: "TwilioVideo-static",
            targets: ["TwilioVideo"])
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/99.99.99/TwilioVideo.xcframework.zip",
            checksum: "1e08c4d37366975f4d188bc0b9032d972c5bee1df4e25c66ba59d6d5acff486a"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/99.99.99/TwilioVideo-static.xcframework.zip",
            checksum: "44733eb5e3940dd3e582030eaa3ada38d8f91cc56c460e951b88b537a89383a0"
        )
    ]
)
