//
//  SignInViewController.h
//  HelpingHand
//
//  Created by JennerPerry on 3/23/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/PFLogInViewController.h>
#import <Parse/PFSignUpViewController.h>
#import "MainPageViewController.h"

@interface SignInViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@property (nonatomic, strong) IBOutlet UILabel *welcomeLabel;
@property (strong, nonatomic) MainPageViewController *mainPageView;


@end
