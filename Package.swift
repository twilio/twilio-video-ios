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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.0/TwilioVideo.xcframework.zip",
            checksum: "184a4e26759aa61a3ee28a306b79ade9318d2b36c4bc866705c9ed2fffdff17a"
        )
    ]
)
