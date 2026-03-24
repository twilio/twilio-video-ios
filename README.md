# Twilio Programmable Video for iOS

This repository contains releases of Twilio's Programmable Video SDK for iOS. These releases can be consumed using Swift Package Manager, CocoaPods or manual integration into your project.

### Swift Package Manager

You can add Programmable Video for iOS by adding the `https://github.com/twilio/twilio-video-ios` repository as a Swift Package. You can choose `TwilioVideo` in **Frameworks, Libraries and Embedded Content** if you want to integrate the dynamic framework version of the SDK, or `TwilioVideo-static` if you want the static framework version.

If you are using the static framework, add `GLKit.framework`, `SystemConfiguration.framework` and `VideoToolbox.framework` to **Frameworks, Libraries and Embedded Content**.

### CocoaPods Integration

We support integration using CocoaPods as well. You can add Programmable Video to your project using the following example Podfile:

```
source 'https://github.com/CocoaPods/Specs'

platform :ios, '12.2'

target 'TARGET_NAME' do
    pod 'TwilioVideo', '~> 5.11'
end
```

Then run `pod install` to install the dependencies for your project.

To integrate the static framework, use the `TwilioVideo-static` pod:

```
  pod 'TwilioVideo-static', '~> 5.10'
```

### Manual Integration

See [manual installation](https://www.twilio.com/docs/api/video/ios#add-the-sdk) steps.

## Issues and Support

Please file any issues you find here on Github.

Please ensure that you are not sharing any [Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii) or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Video SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).


## License

Twilio Programmable Video for iOS is distributed under [TWILIO-TOS](https://www.twilio.com/legal/tos).
