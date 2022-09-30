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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.2.1/TwilioVideo.xcframework.zip",
            checksum: "f38bde50fc021e052d67e2aec2a9abf340b9f3008f613e46c5c4641c2324881a"
        )
    ]
)
