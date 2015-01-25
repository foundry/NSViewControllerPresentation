//
//  MyView.m
//  NSViewControllerPresentations
//
//  Created by jonathan on 24/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

#import "MyView.h"

@implementation MyView
/*
 These click-blockers are required for the custom presented NSViewController's view, as it does not have it's own backing window. Without them, clicks are picked up by the buttons on the presentingViewControllers' view
 
 */
- (void) mouseDown:(NSEvent*)event {}
- (void) mouseDragged:(NSEvent*)event {}
- (void) mouseUp:(NSEvent*)event {}
@end
