//
//  AppDelegate.h
//  HelpingHand
//
//  Created by JennerPerry on 3/21/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "SignInViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SignInViewController *signInView;
@property (strong, nonatomic) MainPageViewController *mainPageView;
@property (strong, nonatomic) UITabBarController *tabBar;

-(void) pushMainPageView;

@end

