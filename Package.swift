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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.0.1/TwilioVideo.xcframework.zip",
            checksum: "66fde713cf7038d1906f859d482e833d0dd76c70f2f860eefddc83f86bbb831b"
        )
    ]
)
