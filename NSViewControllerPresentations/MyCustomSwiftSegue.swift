//
//  MyCustomSwiftSegue.swift
//  NSViewControllerPresentations
//
//  Created by jonathan on 25/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

import Cocoa


class MyCustomSwiftSegue: NSStoryboardSegue {
    /*
      Objective-C NSStoryboardSegue can accept a nil string in the init method. 
      Swift NSStoryboardSegue will die with EXEC_BAD_ACCESS if it gets a nil string (if the Storyboad "identifier" field has not been filled in)
      One solution is to ensure you have an idenifier set in the storyboard (even it it is "")
      Another solution is to override the init method here and check for nil string before passing to super
    */
     override init(identifier: String?,
                  source sourceController: AnyObject,
        destination destinationController: AnyObject) {
            var myIdentifier : String
            if identifier == nil {
                myIdentifier = ""
            } else {
                myIdentifier = identifier!
            }
        super.init(identifier: myIdentifier, source: sourceController, destination: destinationController)
    }

    
    override func perform() {
        let animator = MyCustomSwiftAnimator()
        let sourceVC  = self.sourceController as! NSViewController
        let destVC = self.destinationController as! NSViewController
        sourceVC.presentViewController(destVC, animator: animator)
    }
}


