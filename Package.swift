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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.4.0/TwilioVideo.xcframework.zip",
            checksum: "2b773f6fa7074d175c9557ce7763ce75938a9f3abddd05bedf742049e3ab86d7"
        ),
    ]
)
