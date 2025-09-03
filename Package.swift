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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.1/TwilioVideo.xcframework.zip",
            checksum: "cada84190cf33254e3cf1e094a704d6987f7f8c3ec1c04b205aaa89c70a74b17"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.1/TwilioVideo-static.xcframework.zip",
            checksum: "fb67237d8cea22cf714e3730c3d5fa99ddf98e28ee9e3d88687ebab1fd70fd67"
        )
    ]
)
