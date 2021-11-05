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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.2/TwilioVideo.xcframework.zip",
            checksum: "8458012ff9806d2adb1d6b9ecb1343a5dcdd77af69e0bcd8130967dbe5f7250b"
        )
    ]
)
