//
//  AppDelegate.h
//  HelpingHand
//
//  Created by JennerPerry on 3/21/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>

#import "MainPageViewController.h"
#import "LoginViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) MainPageViewController *mainViewController;
@property (strong, nonatomic) LoginViewController *loginViewController;

@property (nonatomic, assign) BOOL authenticatedUser;

@end

