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
            targets: ["TwilioVideo"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioVideo",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.0/TwilioVideo.xcframework.zip",
            checksum: "5ffc7378e83f0ca93630eb84edae2d5bfa54a8251afa982316ac166db6e4fbb6"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.0/TwilioVideo-static.xcframework.zip",
            checksum: "386f2ccb50b7a087fd537505900834d7278f8634f5787ea1898d30c494365dc6"
        )
    ]
)
