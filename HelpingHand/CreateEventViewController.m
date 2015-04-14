//
//  CreateEventViewController.m
//  HelpingHand
//
//  Created by JennerPerry on 4/14/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import "CreateEventViewController.h"

@implementation CreateEventViewController

#define DATE_PICKER 0
#define LOCATION_PICKER 1

- (instancetype)init {
    self = [super init];
    if(self) {
        self.placeholder = [NSMutableArray arrayWithArray:@[@"Event Title", @"Event Description", @"Start Date", @"Location", @"Invite Friends", @"Event Image"]];
    }
    
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self showCreateEventListView];
    
}

- (void)showCreateEventListView {
    [self setTitle:@"Create Event"];
    [self setView:self.tableView];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
}

/************************
 TABLE VIEW METHODS
 ************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    }
    else if (section == 1) {
        return 3;
    }
    else if (section == 2){
        return 1;
    }
    else {
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 35;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // create new cell if necessary
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    // find position of button
    NSInteger relativePosition = [self relativePosition:indexPath];
    
    // change tablecell font
    cell.textLabel.font=[UIFont fontWithName:@"Arial" size:24];
    
    
    // set tablecell attributes
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // go to selected page
    switch (indexPath.row + indexPath.section) {
        case DATE_PICKER:
            [self pushDatePicker];
            break;
        case LOCATION_PICKER:
            [self pushLocationPicker];
            break;
    }
}


- (void)pushDatePicker {
    return;
}

- (void)pushLocationPicker {
    return;
}



// find the relative position in the tableview based on index section and row
- (NSInteger)relativePosition:(NSIndexPath *)indexPath {
    NSInteger relativePosition = 0;
    
    for (int iterator = 0; iterator < indexPath.section; iterator++) {
        relativePosition += [self tableView:self.tableView numberOfRowsInSection:iterator];
    }
    
    relativePosition += indexPath.row;
    return relativePosition;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
