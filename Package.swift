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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.7.1/TwilioVideo.xcframework.zip",
            checksum: "b7865d6bd46ce8473b4b6679d00b68a85a53a43fab779c59629b7dcc855aa36b"
        ),
    ]
)
