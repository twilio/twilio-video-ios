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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.8.1/TwilioVideo.xcframework.zip",
            checksum: "39ea1c10856e7b3019f0311b34d97a149074c8db79fd6e59618399d592919245"
        ),
    ]
)
