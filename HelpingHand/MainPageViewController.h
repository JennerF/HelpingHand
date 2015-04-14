//
//  MainPageViewController.h
//  HelpingHand
//
//  Created by JennerPerry on 3/21/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/PFLogInViewController.h>
#import <Parse/PFSignUpViewController.h>

@interface MainPageViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *cellDescription;
@property (nonatomic, strong) NSMutableArray *cellPicture;

@end
