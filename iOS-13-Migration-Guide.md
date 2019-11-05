# Twilio Video - iOS 13 Migration Guide

The guide explains how to prepare your Twilio Video apps for compatibility with iOS 13 and iPadOS 13.

## Supported SDKs

We recommend that you use the latest patch releases of our SDKs. At this time, we have verified our [2.10.2](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-2x#2102-october-29-2019), and [3.0.1](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-3x#301-november-5-2019) SDKs for compatibility with iOS 13.2 and iPadOS 13.2.

## Known Issues

We are tracking several issues related to both the Video SDK itself and the [example code](https://github.com/twilio/video-quickstart-ios).

### SDK

1. **Catalyst Support**

Twilio Video does not support Catalyst applications at this time. If you are interested in this feature please let us know in [#49](https://github.com/twilio/twilio-video-ios/issues/49).

2. **TVICameraSource - Background task completion errors**

When `TVICameraSource` starts capturing it begins a background task to ensure that the video pipeline is flushed in the case of an interruption. In iOS 13.0, ending background tasks might send spurious logs to the console:

> 2019-09-03 13:44:15.345 VideoCallKitQuickStart[983:48546] Video track created
> 
> // After backgrounding the application
> 
> 2019-09-03 13:44:21.979 VideoCallKitQuickStart[983:48546] Can't end BackgroundTask: no background task exists with identifier 3 (0x3), or it may have already been ended. Break in UIApplicationEndBackgroundTaskError() to debug.

**Status:** This issue is reproducible on iOS 13.2. We have given feedback to Apple, and hope that this issue can be resolved during the iOS 13 release cycle.

3. **TVICameraSource, TVICameraCapturer - Distorted video after being interrupted by an AVCaptureSession**

See issue [#53](https://github.com/twilio/twilio-video-ios/issues/53). 

**Resolution:** Update Twilio Video to [3.0.1](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-3x#301-november-5-2019), or [2.10.2](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-2x#2102-october-29-2019).

4. **TVIVideoView - OpenGL ES crashes on iOS Simulator**

The SDK will crash when rendering decoded H.264 video, or any other frames in the `TVIPixelFormatYUV420BiPlanarVideoRange` or `TVIPixelFormatYUV420BiPlanarFullRange` formats when using Xcode 11.0 and an iOS 13.0 simulator.

**Resolution:** Update Twilio Video to [3.0.1](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-3x#301-november-5-2019), or [2.10.2](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-2x#2102-october-29-2019) to fix the crash.

5. **TVIVideoView - Metal on the iOS Simulator**

At the moment, Twilio Video does not support Metal on the iOS 13 or iPadOS 13 simulators.

**Status:** Now that macOS Catalina is released we will investigate Metal support further.

6. **UIScene & UIApplication Lifecycle**

iOS 13 introduces new [UIScene](https://developer.apple.com/documentation/uikit/uiscene) APIs to manage multiple instances of your app's UI, and handle UI lifecycle events. Twilio Video 2.x has several classes that register for UIApplication notifications and continue to do so on iOS 13:

- TVIVideoView: To render with the GPU only while the application is active.
- TVICameraSource: To apply orientation tags to video frames.
- TVICameraCapturer: To apply orientation tags to video frames (2.x).
- TVIRoom: For connection management (2.x).

**Status:** If you are using the UIScene APIs, then you should update Twilio Video to [3.0.1+](https://www.twilio.com/docs/video/changelog-twilio-video-ios-version-3x#301-november-5-2019) for the best compatibility.

If you do not use UIScene, then the UIApplication notifications needed by Video classes are still fired as of iOS 13.2:

* UIApplicationDidBecomeActiveNotification
* UIApplicationWillChangeStatusBarOrientationNotification
* UIApplicationWillEnterForegroundNotification
* UIApplicationWillResignActiveNotification

The following .plist manifest was used for evaluation of a single scene application:

```
<key>UIApplicationSceneManifest</key>
<dict>
	<key>UIApplicationSupportsMultipleScenes</key>
	<false/>
	<key>UISceneConfigurations</key>
	<dict>
		<key>UIWindowSceneSessionRoleApplication</key>
		<array>
			<dict>
				<key>UISceneConfigurationName</key>
				<string>Default Configuration</string>
				<key>UISceneDelegateClassName</key>
				<string>YourApp.SceneDelegate</string>
				<key>UISceneStoryboardFile</key>
				<string>Main</string>
			</dict>
		</array>
	</dict>
</dict>
```

7. **SwiftUI**

**Status:** We are still evaluating SwiftUI on iOS 13. Integrators should note that `TVIVideoView` does not specify an `intrinsicContentSize`.

### Sample Code

1. **CallKit**

Starting a `TVIDefaultAudioDevice` [might fail](https://forums.developer.apple.com/thread/120038) when the Participant’s device reports an incoming call to CallKit while backgrounded in iOS 12.4 or 13.1.

**Status:** This issue should be resolved in iOS 13.2. We will retest with the latest release to confirm.

2. **ReplayKit**

The [ReplayKit Framework](https://developer.apple.com/documentation/replaykit) received some significant enhancements in iOS 13, resolving problems with delayed application audio and the reliability of `RPScreenRecorder`. However, there is also a [serious bug](https://stackoverflow.com/questions/57163212/get-nsinvalidargumentexception-when-trying-to-present-rpsystembroadcastpickervie) in iOS 13.0 (fixed in 13.1) that can cause a crash when using [RPSystemBroadcastPickerView](https://developer.apple.com/documentation/replaykit/rpsystembroadcastpickerview).

<img src="images/replaykit-broadcast-picker-ios-13.0.png"/>

If you use a broadcast extension (`com.apple.broadcast-services-upload`) on iOS 13.0 there is also a memory leak that will result in a crash when the microphone is enabled. This crash is resolved in iOS 13.1 as well.

<img src="images/replaykit-broadcast-mic-ios13-audio-resource-limit.png"/>

If you use `ExampleReplayKitAudioCapturer` to capture application audio samples, then you may experience distortion on iOS 13.0 due to changes in the audio format used by ReplayKit.

**Resolution:** Refer to the updated example app ([master](https://github.com/twilio/video-quickstart-ios/tree/master/ReplayKitExample), [2.x](https://github.com/twilio/video-quickstart-ios/tree/2.x/ReplayKitExample)) for iOS 13 support. Consider disabling `RPBroadcastSystemPickerView` on iOS 13.0 using a runtime check and encouraging customers to upgrade to a newer OS.

3. **Swift Naming Conflicts**

When compiling the [3.0 examples](https://github.com/twilio/video-quickstart-ios), the Objective-C class `TVIAudioCodec` conflicts with the `AudioCodec` type definition from AudioToolbox.framework when compiled with Xcode 11.

**Resolution:** The [examples](https://github.com/twilio/video-quickstart-ios) were updated to eliminate the conflict. If you are experiencing conflicts with the Swift translation of Twilio Video classes, then refer to the classes using their fully qualified name:

```.swift
// Both frameworks define the Swift name AudioCodec
import AudioToolbox
import TwilioVideo

// Specify the Twilio class by its full name
var audioCodec: TwilioVideo.AudioCodec?
```

## Feedback

If you have questions about iOS 13 get in touch with us on the linked issues or file a new issue in the [twilio-video-ios](https://github.com/twilio/twilio-video-ios/issues) or [video-quickstart-ios](https://github.com/twilio/video-quickstart-ios/issues) repositories.
