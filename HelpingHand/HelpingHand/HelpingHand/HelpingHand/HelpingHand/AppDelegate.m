//
//  AppDelegate.m
//  HelpingHand
//
//  Created by JennerPerry on 3/21/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"
#import "VolunteerOpportunity.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // Register subclasses
    [User registerSubclass];
    [VolunteerOpportunity registerSubclass];
    
    // Parse set up
    [Parse setApplicationId:@"uWQEKM1NPv75EaJgaLBRMMPNIzv194LZfBui2zhn"
                  clientKey:@"0NDI9OZfDx1ocJhZOwXJdVqE4RLTWeqqfFYMXVi1"];
    
    // Initialize Parse's Facebook Utilities singleton. This uses the FacebookAppID we specified in our App bundle's plist.
    [PFFacebookUtils initializeFacebook];
    
    // Track usage with Parse
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    // Create a main screen window and set its background color
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    self.tabBar = [[UITabBarController alloc] init];
    
    MainPageViewController* vc1 = [[MainPageViewController alloc] init];
    MainPageViewController* vc2 = [[MainPageViewController alloc] init];
    
    NSArray* controllers = [NSArray arrayWithObjects:vc1, vc2, nil];
    self.tabBar.viewControllers = controllers;
    
    // Add the tab bar controller's current view as a subview of the window
    
    // Initialize the navController
    // [self pushSignInView];
    
    [self pushMainPageView];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    // Facebook handles responses when using FB login
    // attempt to extract a token from the url
    return [FBAppCall handleOpenURL:url sourceApplication:sourceApplication withSession:[PFFacebookUtils session]];
}

- (void)pushSignInView {
    self.signInView = [[SignInViewController alloc] init];
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.signInView];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
}

- (void)pushMainPageView {
    self.mainPageView = [[MainPageViewController alloc] init];
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.mainPageView];
    [self.mainPageView.view addSubview:self.tabBar.view];
    
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    [FBAppEvents activateApp];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
