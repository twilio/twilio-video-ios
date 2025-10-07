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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.2/TwilioVideo.xcframework.zip",
            checksum: "62fefa7c5507955a4c6b6f0cef73541681da71f774839b58baf7ea2ca7400099"
        ),
        .binaryTarget(
            name: "TwilioVideo-static",
            url: "https://github.com/twilio/twilio-video-ios/releases/download/5.10.2/TwilioVideo-static.xcframework.zip",
            checksum: "2b27848ae669ecde58773a0a45eb5fd656e60333bfca9029397126d1dfb295ae"
        )
    ]
)
