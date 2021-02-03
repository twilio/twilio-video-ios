// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioVideo",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TwilioVideo",
            targets: ["TwilioVideo"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.3.0/TwilioVideo.xcframework.zip",
            checksum: "7df26962f67247e517f5c58030c0608c2a1c070a1a78e3adb6df248948e23e11"
        )
    ]
)
