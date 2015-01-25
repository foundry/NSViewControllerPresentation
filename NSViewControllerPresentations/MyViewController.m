//
//  MyViewController.m
//  TestOSXApp
//
//  Created by jonathan on 22/01/2015.
//  Copyright (c) 2015 net.ellipsis. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Presented ViewController";
}


- (IBAction)dismiss:(id)sender {
    if (self.presentingViewController) {
        [self.presentingViewController dismissViewController:self];
    } else {
        //for the 'show' transition
        [self.view.window close];
    }
}

@end
