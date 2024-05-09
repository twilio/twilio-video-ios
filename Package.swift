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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.8.2/TwilioVideo.xcframework.zip",
            checksum: "2f4466fd2bcbfc497fbe928099fb81d9d521996d2a008f7736cd64dcb857ecc2"
        ),
    ]
)
