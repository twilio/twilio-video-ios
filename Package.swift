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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.0.0/TwilioVideo.xcframework.zip",
            checksum: "cf77225e3c2f81a99bef29f6820d4e660386b92902f13fc17076d1745fa2e258"
        )
    ]
)
