//
//  MyCustomSwiftAnimator.swift
//  NSViewControllerPresentations
//
//  Created by jonathan on 25/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//
//  based on:
//  http://stackoverflow.com/questions/26715636/animate-custom-presentation-of-viewcontroller-in-os-x-yosemite

import Cocoa

class MyCustomSwiftAnimator: NSObject, NSViewControllerPresentationAnimator {
    
    @objc func  animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController) {
        let bottomVC = fromViewController
        let topVC = viewController
        topVC.view.wantsLayer = true
        topVC.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        topVC.view.alphaValue = 0
        bottomVC.view.addSubview(topVC.view)
        var frame : CGRect = NSRectToCGRect(bottomVC.view.frame)
        frame = frame.insetBy(dx: 40, dy: 40)
        topVC.view.frame = NSRectFromCGRect(frame)
        let color: CGColor = NSColor.gray.cgColor
        topVC.view.layer?.backgroundColor = color
        NSAnimationContext.runAnimationGroup({ (context) -> Void in
            context.duration = 0.5
            topVC.view.animator().alphaValue = 0.8

        }, completionHandler: nil)
        
    }
    
    
    @objc func  animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController) {
        let topVC = viewController
        topVC.view.wantsLayer = true
        topVC.view.layerContentsRedrawPolicy = .onSetNeedsDisplay
        
        NSAnimationContext.runAnimationGroup({ (context) -> Void in
            context.duration = 0.5
            topVC.view.animator().alphaValue = 0
            }, completionHandler: {
                topVC.view.removeFromSuperview()
        })
    }

}
