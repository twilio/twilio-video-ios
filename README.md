# Twilio Programmable Video for iOS

This repository contains releases for the Twilio Programmable Video for iOS SDK.  These releases can be used on their own or the following line in your Cartfile:

    github "twilio/twilio-video-ios"

Please note that additional steps are required for successful integration of this SDK into your project.  Minimally, you must execute a script file during your build process to thin the SDK to only the architecture types you are building.  This is necessary before submission to the AppStore.  This script is located in the delivered .framework file, named `remove_archs`.

###Carthage Integration

We support integration using Carthage binary frameworks. You can add Programmable Video for iOS by adding the following line to your Cartfile:
```
github "twilio/twilio-chat-ios"
```

Then run `carthage bootstrap` (or `carthage update` if you are updating your SDKs)

The .framework file(s) will be downloaded to the Carthage/Build/iOS directory. The final step is to complete integration mentioned in the [manual](https://www.twilio.com/docs/api/video/ios#add-the-sdk) section.



