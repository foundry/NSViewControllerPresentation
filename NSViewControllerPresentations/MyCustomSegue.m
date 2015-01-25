//
//  MyCustomSegue.m
//  NSViewControllerPresentations
//
//  Created by jonathan on 25/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

#import "MyCustomSegue.h"
#import "MyCustomAnimator.h"
#import "NSViewControllerPresentations-Swift.h"

@implementation MyCustomSegue

- (void)perform {
    //Objective-C and Swift versions of animator both work
    //id animator1 = [[MyCustomAnimator alloc] init];
    
    id animator2 = [[MyCustomSwiftAnimator alloc] init];
    [self.sourceController presentViewController:self.destinationController
                                        animator:animator2];
}
@end
