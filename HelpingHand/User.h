//
//  User.h
//  HelpingHand
//
//  Created by JennerPerry on 4/6/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface User : PFUser<PFSubclassing>

@property (retain, strong) PFFile *avatar;
@property (retain, strong) NSString *firstName;
@property (retain, strong) NSString *lastName;


@end
