//
//  ViewController.m
//  TestOSXApp
//
//  Created by jonathan on 22/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "MyCustomAnimator.h"
#import "NSViewControllerPresentations-Swift.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Presenting ViewController";
}

- (IBAction)presentAsPopover:(NSButton *)sender {
    NSViewController* vc = [[MyViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:vc
        asPopoverRelativeToRect:sender.frame
                         ofView:self.view
                  preferredEdge:NSMinYEdge
                       behavior:NSPopoverBehaviorTransient];

}
- (IBAction)presentAsSheet:(NSButton *)sender {
    NSViewController* vc = [[MyViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewControllerAsSheet:vc];

}
- (IBAction)presentAsModal:(NSButton *)sender {
    NSViewController* vc = [[MyViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewControllerAsModalWindow:vc];

}
- (IBAction)presentWithAnimator:(NSButton *)sender {
    id animator = [[MyCustomAnimator alloc] init];
    NSViewController* vc = [[MyViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:vc animator:animator];

}


@end
