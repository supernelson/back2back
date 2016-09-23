<h1>Summary</h1>
- This is our final project at Dev Bootcamp. We pushed beyond our natural limits by using completely new technologies and having only one week to finish the project. It is a showcase of our ability to learn on the fly and an example of strong teamwork required to complete this project.

<h1>Before & After</h1>
- Augmented Reality mobile app using Wikitude’s SDK, adding context for users to a physical space in a way we’ve never seen before.
- Designed for the user to stand on a street corner and use the app to view significant historical events in the past, or perhaps more interestingly have a look forward into the future.

<h2>Prerequisites</h2>
- Obtain Wikitude's SDK & the free trial or full license.
- XCode
- Documents are provided on www.wikitude.com

<h2>Installing</h2>
- Delete the Wikitude framework (in the framework folder) and replace it with the Wikitude framework that you downloaded directly from their site.
- In Build Phases/Link Binary With Libraries, delete libc++.dylib and libz.dylib.
- Delete libc++.dylib and libz.dylib from your project in x-code (they should be red)
- In Build Phases/Link Binary With Libraries, add a new binary link by clicking the '+'. Click 'Add other'. Then press 'command shift g'. This will allow you to navigate to any directory you want to in your computer. Type in the search bar /usr/lib. In this directory, select libc++.1.dylib and libz.1.dylib.
- In Build Settings, type in the search bar 'bitcode'. Set 'Enable Bitcode' to 'No'.
- Add GeoLocation
- Open 'ViewController.m' and find the line of code that contains 'WTFeature_2DTracking'. Replace this with 'WTFeature_Geo'.
- Open 'Info.plist' and right click in the whitespace. Select 'Add Row'. In the first column of the new row type 'NSLocationWhenInUseUsageDescription'. Also, in the value column type the message you want to appear to the user, for example 'Allow this app to access your location'.
- In Build Settings, type in the search bar 'other linker flgas'. Double click under the third column and add -ObjC

