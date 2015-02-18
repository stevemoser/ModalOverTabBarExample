//
//  FirstViewController.m
//  TabBarModal
//
//  Created by Stephen Moser on 2/17/15.
//  Copyright (c) 2015 Stephen Moser. All rights reserved.
//

#import "FirstViewController.h"
#import "ModalViewController.h"

@interface FirstViewController () <UITabBarControllerDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tabBarController.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if (viewController == [self.tabBarController.viewControllers objectAtIndex:1] )
    {
        // Show modal on tap of second VC
        [self.tabBarController presentViewController:[ModalViewController new] animated:YES completion:nil];
        return NO;
    }
    return YES;
}

@end
