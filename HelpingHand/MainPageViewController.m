//
//  MainPageViewController.m
//  HelpingHand
//
//  Created by JennerPerry on 3/21/15.
//  Copyright (c) 2015 JennerFelton. All rights reserved.
//

#import "MainPageViewController.h"

@interface MainPageViewController ()

#define CREATE_EVENT 0
#define FRIENDS 1
#define POPULAR 2
#define TODAY_EVENT 3
#define WEEK_EVENT 4
#define MONTH_EVENT 5
#define SETTINGS 6

@end

@implementation MainPageViewController

- (instancetype)init {
    self = [super init];
    if(self) {
        self.cellDescription = [NSMutableArray arrayWithArray:@[@"Create Event", @"Friends", @"Popular", @"Events Today", @"Events Next Week", @"Events Next Month", @"Settings"]];
        self.cellPicture = [NSMutableArray arrayWithArray:@[@"create_event_icon.png",
                                                                @"friend_icon.png",
                                                                @"star_icon.png",
                                                                @"event_square_icon.png",
                                                                @"event_square_icon.png",
                                                                @"event_square_icon.png", @"settings_icon.png"]];
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self showEventsListView];
    
}

- (void)showEventsListView {
    [self setTitle:@"Volunteer Events"];
    [self setView:self.tableView];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

/************************
 TABLE VIEW METHODS
 ************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2){
        return 3;
    }
    else {
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 25;
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
    cell.textLabel.text = [self.cellDescription objectAtIndex:relativePosition];
    cell.imageView.image = [UIImage imageNamed: [self.cellPicture objectAtIndex:relativePosition]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // go to selected page
    switch (indexPath.row + indexPath.section) {
        case CREATE_EVENT:
            [self pushCreateEvent];
            break;
        case FRIENDS:
            [self pushFriends];
            break;
        case POPULAR:
            [self pushEvents:indexPath.row];
            break;
        case TODAY_EVENT:
            [self pushEvents:indexPath.row];
            break;
        case WEEK_EVENT:
            [self pushEvents:indexPath.row];
            break;
        case MONTH_EVENT:
            [self pushEvents:indexPath.row];
            break;
        case SETTINGS:
            [self pushSettings];
            break;
    }
}


- (void)pushCreateEvent {
    return;
}

- (void)pushFriends {
    return;
}

- (void)pushEvents:(NSInteger)date {
    return;
}

- (void)pushSettings {
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
