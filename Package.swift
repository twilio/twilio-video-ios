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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.2.0/TwilioVideo.xcframework.zip",
            checksum: "18b06807943b9d22f6cf256fbfbac16e4c46de8ea89685c97fe9856195435515"
        )
    ]
)
