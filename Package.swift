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
        .library(
            name: "TwilioVideo-static",
            targets: ["TwilioVideo"])
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.3/TwilioVideo.xcframework.zip",
            checksum: "4db53a25039a43e0afdc7a7b8fbc08ddda51a7522878f3558cddc5579a3312ad"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.11.3/TwilioVideo-static.xcframework.zip",
            checksum: "f06c0624164ef755c3566b396d4510d300a9669c7de79d5385758f6366830981"
        )
    ]
)
