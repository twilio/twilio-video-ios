# Twilio Programmable Video for iOS

This repository contains releases for the Twilio Programmable Video for iOS SDK.  These releases can be used on their own, using Carthage or by CocoaPods.


### Carthage Integration

We support integration using Carthage binary frameworks. You can add Programmable Video for iOS by adding the following line to your Cartfile:
```
github "twilio/twilio-video-ios"
```

Then run `carthage bootstrap` (or `carthage update` if you are updating your SDKs)

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: `/bin/sh`), add the following contents to the script area below the shell:

    ```sh
    /usr/local/bin/carthage copy-frameworks
    ```

Add the paths to the frameworks you want to use under “Input Files”, e.g.:

    ```
    $(SRCROOT)/Carthage/Build/iOS/TwilioVideo.framework
    ```
    
### CocoaPods Integration

We support integration using CocoaPods as well. Following is an example Podfile to consume Video SDK using CocoaPods:

```
source 'https://github.com/CocoaPods/Specs'

platform :ios, '8.1'

target 'TARGET_NAME' do
    pod 'TwilioVideo', '~> 1.0'
end
```
	
Then run `pod install` to install the dependencies for your project.