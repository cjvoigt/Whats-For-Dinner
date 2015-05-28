//
//  WFDWeeklyViewController.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/23/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFDWeeklyViewController.h"

@interface WFDWeeklyViewController ()

@property (nonatomic) NSMutableArray* mealList;

@end

@implementation WFDWeeklyViewController

#pragma mark - Table View Delegate

- (instancetype) init{
    self = [super init];
    
    if (self){
        [self.tableView setRowHeight: 65];
    }
    
    return self;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"Cell"];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Monday";
            cell.detailTextLabel.text = @"Pasta";
            break;
        case 1:
            cell.textLabel.text = @"Tuesday";
            break;
        case 2:
            cell.textLabel.text = @"Wednesday";
            break;
        case 3:
            cell.textLabel.text = @"Thursday";
            break;
        case 4:
            cell.textLabel.text = @"Friday";
            break;
        case 5:
            cell.textLabel.text = @"Saturday";
            break;
        case 6:
            cell.textLabel.text = @"Sunday";
            break;
        default:
            NSLog(@"indexPath went to far");
            break;
    }
    
    return cell;
}
@end
