//
//  ARAboutMeController.m
//  Framework
//
//  Created by Nhat Huy on 11/11/13.
//  Copyright (c) 2013 Mulodo Viet Nam. All rights reserved.
//

#import "ARAboutMeController.h"
#import "UIImageView+ARDefaultStyle.h"
#import "UITableView+ARDefaultStyle.h"
#import "UIButton+ARDefaultStyle.h"
#import "UIColor+iOS7Colors.h"
#import "UILabel+ARDefaultStyle.h"

#import <QuartzCore/QuartzCore.h>

@interface ARAboutMeController()

@property (strong,nonatomic) NSArray *colors;
@property (strong,nonatomic) NSArray *informations;

@end


@implementation ARAboutMeController

- (void)viewDidLoad {
    
    [self.scrollView setBackgroundColor:[UIColor MetroClouds]];
    [self.avatar defaultStyle];
    [self.name defaultStyle];
    [self.scrollView setContentSize:CGSizeMake(1000, 10000)];
    self.colors = @[@"MetroSilver", @"MetroConcrete", @"MetroAsbestos"];
    self.informations = @[@"iOS Developer", @"University of Science", @"Bachelor of Science"];
}

#pragma mark - Information TableView datasource

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Information";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *queueString = @"QueueString";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:queueString];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] init];
    }
    
    cell.textLabel.text = self.informations[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *color = self.colors[indexPath.row];
    UIColor *rowColor = [UIColor performSelector:NSSelectorFromString(color)];
    
    [cell setBackgroundColor:rowColor];
}

@end


