//
//  MyCustomSwiftSegue.swift
//  NSViewControllerPresentations
//
//  Created by jonathan on 25/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

import Cocoa

class MyCustomSwiftSegue: NSStoryboardSegue {
    
    override func perform() {
        let animator = MyCustomSwiftAnimator()
        let sourceVC  = self.sourceController as! NSViewController
        let destVC = self.destinationController as! NSViewController
        sourceVC.presentViewController(destVC, animator: animator)
    }
    
}


