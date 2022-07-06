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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.1.1/TwilioVideo.xcframework.zip",
            checksum: "125e944221600cbe98436d1cbc7bd8817c2795e6a9f36e3a63c01f0016f67d78"
        )
    ]
)
