# Twilio Programmable Video for iOS

This repository contains releases of Twilio's Programmable Video SDK for iOS. These releases can be consumed manually, or via Carthage or CocoaPods.


### Carthage Integration

We support integration using Carthage binary frameworks. You can add Programmable Video to your project by adding the following line to your Cartfile:
```
github "twilio/twilio-video-ios"
```

Then run `carthage bootstrap` (or `carthage update` if you are updating your SDKs)

On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk.

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: `/bin/sh`), add the following contents to the script area below the shell:

```sh
/usr/local/bin/carthage copy-frameworks
```

Add the paths to the frameworks you want to use under “Input Files”, e.g.:

```
$(SRCROOT)/Carthage/Build/iOS/TwilioVideo.framework
```
    
### CocoaPods Integration

We support integration using CocoaPods as well. You can add Programmable Video to your project using the following example Podfile:

```
source 'https://github.com/CocoaPods/Specs'

platform :ios, '8.1'

target 'TARGET_NAME' do
    pod 'TwilioVideo', '~> 1.0'
end
```
	
Then run `pod install` to install the dependencies for your project.

### Manual Integration

See [manual installation](https://www.twilio.com/docs/api/video/ios#add-the-sdk) steps.

## Issues and Support

Please file any issues you find here on Github.
Please ensure that you are not sharing any
[Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii)
or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Video SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).