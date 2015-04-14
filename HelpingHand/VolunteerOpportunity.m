//
//  VolunteerOpportunity.m
//  HelpingHand
//
//  Created by JennerPerry on 4/2/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import "VolunteerOpportunity.h"
#import <Parse/PFObject+Subclass.h>

@implementation VolunteerOpportunity

@dynamic owner;
@dynamic creationDate;
@dynamic eventDate;
@dynamic locationOfEvent;
@dynamic eventDescription;
@dynamic eventImage;
@dynamic volunteersNeeded;
@dynamic volunteersSignedUp;


+ (NSString *)parseClassName {
    return @"VolunteerOpportunity";
}


@end
