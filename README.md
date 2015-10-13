# NSViewControllerPresentation

A small demo of NSViewController's present and dismiss methods, including custom `NSViewControllerPresentationAnimator` object  
  
Examples provided for the following methods:  
  
    – presentViewController:asPopoverRelativeToRect:ofView:preferredEdge:behavior:  
    – presentViewControllerAsModalWindow:  
    – presentViewControllerAsSheet:  
    – presentViewController:animator:  
    
For comparison, behaviour is also be provided using NSStoryboardSegues:  
"Popover", "Sheet" and "Modal" are built-in segues corresponding to the respective `presentViewController:` methods    
"Custom"  segue is similar to `presentViewController:animator` and expects a custom `NSStoryboardSegue` and custom animator object.  
"Show" segue launches an NSViewController in a new window with no return-relationship (i.e. no presenting/presented relationship)

For the animator/custom example, a custom `NSStoryboardSegue` subclass is provided, alongside a custom object conforming to the  `NSViewControllerPresentationAnimator` protocol.  

These are shown in Objective-C and Swift versions for comparison. ~~Check the comment in `MyCustomSwiftSegue` - there's a Swift-only  _gotcha_ waiting to trip you up~~ (see also this [Stack Overflow question]( http://stackoverflow.com/questions/26876609/nsstoryboardsegue-sample-code-yosemite-storyboard?lq=1 question)).


![](http://i.stack.imgur.com/JuGRB.png)
