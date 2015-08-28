# sample_ios
Sample iOS application demonstration the Saturnup SDK

#Integration Quick Start
Integration with the Saturnup SDK can be done in one of two ways: manually installing the .framework directory in xcode, or through Cocoapods. 

#### Download the framework file
The Saturnup SDK is packaged in just a single .framework directory. Just drag and drop the SUSDK.framework directory into your project, and install it just like any other framework.

#### Cocoapods
The Saturnup SDK is also available via Cocoapods. Just add `pod 'Saturnup'` to your Podfile and you're good to go!



Then simply import the SUSDK framework in files using the SDK.
```import SUSDK```

In the application delegate set your API key in the application didFinishLaunchingWithOptions function
```
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
  // Set Saturnup SDK API key
  SUSDK.setAPIKey("YOUR_API_KEY")
    
  return true
}
```
And you're done with setup!

#Displaying An Ad
To display an ad call `SUSDK.getViewController()`. This returns a SUSDKViewController object, which contains the ad. You can then present it just like any other view controller!

```
let adViewController : SUSDKViewController = SUSDK.getViewController()
self.presentViewController(adViewController, animated: true, completion: nil)
```

#Tracking User's Answers
The Saturnup platform allows you to track whether or not the user answered the Ad question correctly. To track it, set a delegate conforming to the `SUSDKViewControllerDelegate` protocol.
```
let adViewController : SUSDKViewController = SUSDK.getViewController()
adViewController.delegate = self
self.presentViewController(adViewController, animated: true, completion: nil)
```
The delegate object will then have three different callback functions you can implement to handle different answer scenarios
```
func saturnupAdDidSuccede() {
  // Implement action for correctly answered question
}

func saturnupAdDidNotComplete() {
  // Implement action for closing ad without answering
}

func saturnupAdDidFail() {
  // Implement action for incorrectly answered question
}
```
