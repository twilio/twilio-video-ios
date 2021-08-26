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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.5.0/TwilioVideo.xcframework.zip",
            checksum: "5428a20133aa829f9d7437704bd1235dd90e8bb96b42a50667d492dde357f068"
        )
    ]
)
