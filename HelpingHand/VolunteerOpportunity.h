//
//  VolunteerOpportunity.h
//  HelpingHand
//
//  Created by JennerPerry on 4/2/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import <Parse/Parse.h>

@interface VolunteerOpportunity : PFObject<PFSubclassing>

@property (retain, strong) PFUser *owner;
@property (retain, strong) NSDate *creationDate;
@property (retain, strong) NSDate *eventDate;
@property (retain, strong) CLLocation *locationOfEvent;
@property (retain, strong) NSString *eventDescription;
@property (retain, strong) UIImage *eventImage;


@property int volunteersNeeded;
@property int volunteersSignedUp;

+ (NSString *)parseClassName;

@end
