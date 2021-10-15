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
            url: "https://github.com/twilio/twilio-video-ios/releases/download/4.6.1/TwilioVideo.xcframework.zip",
            checksum: "08eefe88eb01fee42a491aff3aecfaaa17104827f0808817b03d1a429ee9eab3"
        )
    ]
)
